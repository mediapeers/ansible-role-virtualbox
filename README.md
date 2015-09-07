Todo: add travis build status

# Ansible role Virtualbox
Installs headless Virtualbox and phpVirtualbox for remote access through Web GUI. Meant for a headless Ubuntu 14.04. server.
Might also work on other Ubuntu versions and editions.

## Requirements
For Ubuntu 14.04 server OS.

## Role Variables
The role accepts following variables:
* `virtualbox_version: 4.3`  Major Virtuablbox version
* `virtualbox_user: vbox` User that runs Virtualbox deamon and phpVirtualbox connects to

## Dependencies
Depends on no other roles.

## Example Playbook
Example on how to include role into your playbook:
```yaml
- name: My playbook
  hosts: servers
  roles:
    - { role: mpx.virtualbox, virtualbox_version: 5.0, virtualbox_user: vbox }
```

## License
BSD

## Author Information
Stefan Horning <horning@mediapeers.com>
