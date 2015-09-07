# Ansible role Virtualbox
Installs headless Virtualbox and phpVirtualbox for remote access through Web GUI. Meant for a headless Ubuntu 14.04. server.
Should also work on other Ubuntu versions and editions.

## Requirements
For Ubuntu server OS.

## Role Variables
The role accepts following variables:
* virtualbox_version: 4.3  # Major Virtuablbox version

## Dependencies
Depends on no other roles.

## Example Playbook
Example on how to include role into your playbook:
```yaml
- name: My playbook
  hosts: servers
  roles:
    - { role: mpx.virtualbox, version: 5 }
```

## License
BSD

## Author Information
Stefan Horning <horning@mediapeers.com>
