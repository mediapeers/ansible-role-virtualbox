[![Build Status](https://travis-ci.org/mediapeers/ansible-role-virtualbox.svg?branch=master)](https://travis-ci.org/mediapeers/ansible-role-virtualbox)

# Ansible role Virtualbox
Installs headless [Virtualbox](https://www.virtualbox.org/) and [phpVirtualbox](http://sourceforge.net/projects/phpvirtualbox/) for remote access
through Web GUI. Meant for a headless Ubuntu/Debien server.

## Requirements
Tested with Ubuntu 14.04 server. Probably works with all Debian and Ubuntu flavours and versions which are not too old.

## Role Variables
Those are the role variables you probably want to change:

* `virtualbox_user: vbox` User that runs Virtualbox deamon and phpVirtualbox connects to
* `virtualbox_user_pw: abc123` Plaintext PW for virtualbox user needed for phpVirtualbox connection config

There is more variables you can overwrite when using this role. For a full list see `defaults/main.yml`.

## Dependencies
Depends on no other roles.

## Example Playbook
Copy this role into the roles/mediapeers.virtualbox dir in your Ansible project. Preferably add it as a submodule.
You can also install it with `ansible-galaxy install mediapeers.virtualbox`.
Then use it like so:

```yaml
- name: My playbook
  hosts: servers
  roles:
    - { role: mediapeers.virtualbox, virtualbox_user: vbox, virtualbox_user_pw: supersecretvalue }
```

## License
BSD

## Author Information
Stefan Horning <horning@mediapeers.com>
