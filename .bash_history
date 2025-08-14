yum install epel-release -y && sudo yum install ansible -y
yum install ansible -y
ansible --version
cd /etc/ansible
ll
cd /etc/ansible/hosts
cd .. ..
cd ../ ../
sudo -i
vim hosts.ini
ssh-keygen -t rsa -b 4096
ssh-copy-id user@
ssh-copy-id user@172.31.24.88
vim hosts.ini
ssh-copy-id user@172.31.24.88
cd /etc/ssh
ll
vim sshd_config
systemctl restart sshd
passwd root
sudo -i
ssh-copy-id root@172.31.24.88 
ssh-copy-id root@3.93.187.247
ssh-copy-id root@172.31.24.88 
ansible -m ping all
ansible ping -m all
cd /etc/ansible
ll
cd ..
cd
vim /etc/ansible/hosts
vim /etc/ansible/ansible.cfg
ansible ping -m all
ll
vim hosts.ini 
rm -rf hosts.ini
ll
ansible ping -m all
cd /etc/ansible
ll
vim ansible.cfg 
vim hosts 
ansible ping -m all
cd ..
cd
ansible ping -m all
ansible all -m ping
ansible web -m ping
ansible webserver -m ping
vim /etc/ansible/hosts
ansible webservers -m ping
vim /etc/ansible/hosts
vim /etc/ansible/ansible.cfg
vim /etc/ansible/hosts
ansible all -m ping
ssh-copy-id root@172.31.34.85
ssh-copy-id root@172.31.41.99
ssh-copy-id root@172.31.45.195 
ansible all -m ping
ansible all --list hosts
ansible all --list-hosts
history
vim myfirstplaybook.yml
ansible-playbook myfirstplaybook.yml 
vim myfirstplaybook.yml
ansible-playbook myfirstplaybook.yml 
vim installlhttpd.yml
vim myfirstplaybook.yml
ansible-playbook myfirstplaybook.yml 
vim myfirstplaybook.yml
ansible-playbook myfirstplaybook.yml 
vim myfirstplaybook.yml
ansible-playbook myfirstplaybook.yml 
ll
vim installlhttpd.yml 
ansible-playbook installlhttpd.yml 
vim installlhttpd.yml 
ansible-playbook installlhttpd.yml 
vim installlhttpd.yml 
ansible-playbook installlhttpd.yml 
ll
variables.yml
vim variables.yml
ansible-playbook variables.yml 
ll
hostnamectl set-hostname vamsi
hostnamectl set-hostname 52.91.164.25
ll
vim deploywebsite.yml
ansible-playbook deploywebsite.yml 
vim deploywebsite.yml
ansible-playbook deploywebsite.yml 
vim deploywebsite.yml
ansible-playbook deploywebsite.yml 
cat deploywebsite.yml 
vim deploywebsite.yml
ansible-playbook deploywebsite.yml 
cd /var/www/html
cd /var/www/html/
cd /var
ll
cd ..
vim deploywebsite.yml
cd ..
cd
vim deploywebsite.yml
ansible-playbook deploywebsite.yml 
vim deploywebsite.yml
ansible-playbook deploywebsite.yml 
 vim /var/www/html/index.html
vim index.html
vim copyfile.yml
ansible-playbook copyfile.yml 
ll
ansible-playbook deploywebsite.yml 
vim deploywebsite.yml 
ansible-playbook deploywebsite.yml 
vim deploywebsite.yml 
ll
vim index.html 
vim deploywebsite.yml 
ansible-playbook deploywebsite.yml 
vim deploywebsite.yml 
vim index.html 
ansible-playbook deploywebsite.yml 
vim getgitrepo.yml
ansible-playbook getgitrepo.yml 
l
ll
rm -rf supriya
ll
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ll
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim installpackages.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
vim setupjenkins.yml
ansible-playbook setupjenkins.yml 
cat /var/lib/jenkins/secrets/initialAdminPassword
ll
vim tomcatsetup.yml
ansible-playbook tomcatsetup.yml 
vim tomcatsetup.yml
ansible-playbook tomcatsetup.yml 
vim tomcatsetup.yml
vim createec2.yml
ansible-playbook createec2.yml 
vim createec2.yml
ansible-playbook createec2.yml 
ll
vim tomcatsetup.yml 
ansible-galaxy collection install amazon.aws
ansible-galaxy collection install amazon.aws --force
aws configure
aws  version
aws --version
vim createec2.yml 
ansible-playbook createec2.yml 
pip install boto3 httplib2
yum install python3-boto3 python3-httplib2
yum install python3-pip -y
pip3 install boto3 httplib2
ansible-playbook createec2.yml 
ll
pip install ansible.netcommon
pip install botocore
ansible --version
pip install boto3 botocore
ansible-galaxy collection install amazon.aws
pip install ansible==2.14.
pip install ansible==2.14.6
vim createec2.yml 
ansible-galaxy role init myfirstrole
ls
cd roles
cd roles/
mkdir roles
cd roles/
ansible-galaxy role init myfirstrole1
ll
ll -a
cd myfirstrole1/
ll
vim vars
vim vars/main.yml
ll
ansible-playbook createec2.yml 
vim createec2.yml 
ansible-playbook createec2.yml 
vim createec2.yml 
ansible-playbook createec2.yml 
vim createec2.yml 
ansible all -m ping
vim createec2.ymll
ll
ansible-playbook handler.yml 
ansible-galaxy role init prodrole
cd prodrole/
ll
vim defaults/
vim vars/main.yml
vim tasks/main.yml
ll
cd ../
ll
vim install_httpd.yml 
vim myfirstplaybook.yml 
mv index.html prodrole/files
cd prodrole/l
l
cd prodrole/
ll
ls files
vim tasks/main.yml
cd ../
ansible-playbook myfirstplaybook.yml 
vim tasks/main.yml
vim prodrole/tasks/main.yml
ansible-playbook myfirstplaybook.yml 
git remote remove origin
git remote -v
ansible-playbook installpackages.yml 

pip install boto3
ansible-galaxy collection install amazon.aws
ansible-galaxy collection install amazon.aws --force
openssl rand -base64 2048 > vault.pass
ansible-vault create group_vars/all/pass.yml --vault-password-file vault.pass
ansible-galaxy collection install karcadia.aws
pip install boto3
vim createec2.yml 
ansible-galaxy role init ec2
cd ec2/
ll
cd 
..
sudo -i
ll
anisble all -m ping
ansible all -m ping
ansible-galaxy init role install ansible-galaxy role install frozenfoxx.docker_container
ansible-galaxy role install frozenfoxx.docker_container
ansible-galaxy role list
vim myfirst
vim myfirstplaybook.yml 
vim frozenfoxx.docker_container/main.yml
ll
ls ~./ansible/roles
ls ~/.ansible/roles
ansible-playbook myfirstplaybook.yml 
ll
vim install_httpd.yml 
vim installpackages.yml 
ansible-playbook installpackages.yml 
vim installpackages.yml 
ansible-playbook installpackages.yml 
git init
ls
git remote add origin https://github.com/vamsipamu/samplerepotoansiblegalaxy.git
git remote -v
git add .
git commit -m "first commit"
cd..
su 
vim createec2.yml 
ansible-playbook myfirstplaybook.yml 
vim createec2.yml 
vim ec2.yml---
vim ec2.yml
cd ec2/
ll
vim tasks/main.yml
openssl rand -base64 2048 > vault.pass
ansible-vault create group_vars/all/pass.yml --vault-password-file vault.pass
vim tasks/main.yml
ansible-playbook ec2.yml
cd ../
ll
vim ec2.yml 
ansible-playbook ec2.yml
vim ec2.yml 
ansible-playbook ec2.yml
ansible-playbook ec2.yml -vault-password-file vault.file
cd ec2/
ansible-playbook ec2.yml -vault-password-file vault.file
ansible-playbook -i inventory ec2.yml -vault-password-file vault.file
ansible-playbook ec2.yml -vault-password-file vault.filecd ..
cd../ll
cd../
cd..
cd
ll
ansible-playbook ec2.yml -vault-password-file vault.filecd ..
ansible-playbook ec2.yml -vault-password-file vault.file
vim vault.pass 
ansible-playbook ec2.yml -vault-password-file vault.pass
ansible-playbook ec2.yml --vault-password-file vault.pass
vim ec2/tasks/main.yml 
ansible-playbook ec2.yml --vault-password-file vault.pass
vim ec2/tasks/main.yml 
ansible-vault edit group_vars/all/pass.yml --vault-password-file vault.pass
ansible-vault create group_vars/all/pass.yml --vault-password-file vault.pass
ansible-vault edit group_vars/all/pass.yml --vault-password-file vault.pass
ansible-playbook ec2.yml --vault-password-file vault.pass
vim ec2/tasks/main.yml 
ansible-playbook ec2.yml --vault-password-file vault.pass
ll
ansible-playbook loops.yml 
ansible-playbook loops.yml --vault-password-file vault.pass
ansible-vault
ansible-vault create vault.yml
ansible-vault create aws_cred.yml
ansible-vault edit aws_cred.yml
ansible-vault rekey aws_cred.yml
ansible-vault view aws_cred.yml
ansible-vault encrypt aws_cred.yml
ansible-vault encrypt loops.yml 
ansible-vault decrypt loops.yml 
ansible-vault create myvault.yml --vault-password-file vault.pass
su ec2-user
