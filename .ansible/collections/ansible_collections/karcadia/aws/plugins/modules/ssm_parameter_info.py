#!/usr/bin/python
# -*- coding: utf-8 -*-

# Copyright: (c) 2017, Ansible Project
# GNU General Public License v3.0+ (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)

DOCUMENTATION = r"""
---
module: ssm_parameter_info
version_added: 0.0.1
short_description: Retrieve key-value pairs in AWS Systems Manager Parameter Store
description:
  - Retrieve key-value pairs in AWS Systems Manager (SSM) Parameter Store.
options:
  name:
    description:
      - Parameter key name.
    required: false
    type: str
  names:
    description:
      - List of parameter key names.
    required: false
    type: str
  return_values:
    description:
      - Option to return values or not within the parameter detail.
    required: false
    default: False
    type: bool
seealso:
  - ref: amazon.aws.aws_ssm lookup <ansible_collections.amazon.aws.aws_ssm_lookup>
    description: The documentation for the C(amazon.aws.aws_ssm) lookup plugin.
  - ref: community.aws.ssm_parameter <ansible_collections.community.aws.ssm_parameter>
    description: The documentation for the C(community.aws.ssm_parameter) module.

author:
  - "Justin McCormick <karcadia@gmail.com>"

"""

EXAMPLES = r"""
- name: Retrieve one specific parameter.
  karcadia.aws.ssm_parameter_info:
    name: "Hello"
  register: one_ssm_parameter

- name: Retrieve multiple parameters.
  karcadia.aws.ssm_parameter_info:
    names:
      - "subnet1"
      - "subnet2"

- name: Retrieve all parameters with values.
  karcadia.aws.ssm_parameter_info:
    return_values: True
"""

RETURN = r"""
parameters:
  type: list
  description:
    - List of parameters.
    - Values included when requested.
  returned: success
  contains:
    ARN:
      type: str
      description: Amazon Resource Name for the SSM Parameter.
      example: arn:aws:ssm:us-east-1:123456789:parameter/hello
      returned: success
    DataType:
      type: str
      description: Parameter Data type.
      example: text
      returned: success
    LastModifiedDate:
      type: str
      description: Time and date that the parameter was last modified.
      example: '2022-06-20T09:56:58.573000+00:00'
      returned: success
    Name:
      type: str
      description: Parameter key name.
      example: Hello
      returned: success
    Type:
      type: str
      description: Parameter type.
      example: String
      returned: success
    Value:
      type: str
      description: Parameter value.
      example: subnet-0a1b2c3d4e5f6a7b8c9
      returned: return_values == true
    Version:
      type: int
      description: Parameter version number
      example: 3
      returned: success
    tags:
      description: A dictionary representing the tags associated with the parameter.
      type: dict
      returned: when the parameter has tags
      example: {'MyTagName': 'Some Value'}
      version_added: 0.1.0
"""


try:
    import botocore
    from botocore.exceptions import BotoCoreError
    from botocore.exceptions import ClientError
except ImportError:
    pass  # Handled by AnsibleAWSModule

from ansible.module_utils.common.dict_transformations import camel_dict_to_snake_dict

from ansible_collections.amazon.aws.plugins.module_utils.botocore import is_boto3_error_code
from ansible_collections.amazon.aws.plugins.module_utils.retries import AWSRetry
from ansible_collections.amazon.aws.plugins.module_utils.tagging import ansible_dict_to_boto3_tag_list
from ansible_collections.amazon.aws.plugins.module_utils.tagging import boto3_tag_list_to_ansible_dict
from ansible_collections.amazon.aws.plugins.module_utils.tagging import compare_aws_tags

from ansible_collections.community.aws.plugins.module_utils.modules import AnsibleCommunityAWSModule as AnsibleAWSModule

def get_parameter_tags(client, module, parameter_name):
    try:
        tags = client.list_tags_for_resource(aws_retry=True, ResourceType="Parameter", ResourceId=parameter_name)["TagList"]
        tags_dict = boto3_tag_list_to_ansible_dict(tags)
        return tags_dict
    except (BotoCoreError, ClientError) as e:
        module.fail_json_aws(e, msg="Unable to retrieve parameter tags")

@AWSRetry.jittered_backoff()
def list_parameters(client, module, **args):
    paginator = client.get_paginator("describe_parameters")
    existing_params = paginator.paginate(**args).build_full_result()

    if not existing_parameter["Parameters"]:
        return []

# We may want to add the feature to pull tags eventually.
#    tags_dict = get_parameter_tags(client, module, module.params.get("name"))
#    existing_parameter["Parameters"][0]["tags"] = tags_dict
#    return existing_parameter["Parameters"][0]
    return existing_params

def setup_client(module):
    retry_decorator = AWSRetry.jittered_backoff()
    connection = module.client("ssm", retry_decorator=retry_decorator)
    return connection

def setup_module_object():
    argument_spec = dict(
        name=dict(type='str', required=False),
        names=dict(type='list', required=False),
        return_values=dict(type='bool', required=False)
    )

    return AnsibleAWSModule(
        argument_spec=argument_spec,
        supports_check_mode=False,
    )

def main():
    module = setup_module_object()
    client = setup_client(module)

    if 'return_values' in module.params and module.params['return_values']:
        return_values = True
    else:
        return_values = False

    if 'name' in module.params and module.params['name']:
        result = client.get_parameters(Names=[module.params['name']])['Parameters'][0]
        if 'Value' in result and not return_values:
            del result['Value']
        result_list = [result]
    elif 'names' in module.params and module.params['names']:
        result_list = []
        result = client.get_parameters(Names=module.params['names'])['Parameters']
        for res in result:
            if 'Value' in res and not return_values:
                del res['Value']
            result_list.append(res)
    else:
        param_list = list_parameters(client, module)
        if return_values:
            result_list = []
            for param in param_list['Parameters']:
                detail = client.get_parameters(Names=[param['Name']])
                result_list.append(detail['Parameters'][0])
        else:
            result_list = param_list['Parameters']

#    try:
#        parameter_metadata = describe_parameter(client, module)
#        parameter_metadata = describe_parameter(client, module, ParameterFilters=[{"Key": "Name", "Values": [module.params.get("name")]}])
#    except is_boto3_error_code("ParameterNotFound"):
#        return False, {}
#    except (botocore.exceptions.ClientError, botocore.exceptions.BotoCoreError) as e:
#        module.fail_json_aws(e, msg="to describe parameter")
#    if parameter_metadata:
#        result["parameter_metadata"] = camel_dict_to_snake_dict(parameter_metadata, ignore_list=["tags"])

    module.exit_json(parameters=result_list)

if __name__ == "__main__":
    main()
