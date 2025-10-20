# netflixme
Ansible recipes for a self hosted server

## First server setup

Replace `gabriel` with whatever will be your linux user with root privileges.

```bash
ssh root@server-name.com
```

```bash
useradd -m -d /home/gabriel gabriel
cp -r /root/.ssh /home/gabriel/
chown -R gabriel:gabriel /home/gabriel/.ssh
usermod -s /bin/bash gabriel
visudo
```
> gabriel ALL=(ALL) NOPASSWD: ALL

Test that ansible works:

```bash
ansible all -m ping
```

## Setup server

Copy dist file and update the variables:

```bash
cp netflixme-vars.yml.dist netflixme-vars.yml
```

Setup server:

```bash
make setup
```