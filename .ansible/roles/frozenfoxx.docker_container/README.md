# ansible-role-docker_container

Ansible role to deploy [Docker](https://docker.io/) containers.

# Requirements

## Linux
- [Docker](https://docker.io)
- community.docker.docker_container

# Usage

```
- hosts: servers
  roles:
    - { role: frozenfoxx.docker_container }
```

# License

Apache-2.0
