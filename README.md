[![Build Status](https://travis-ci.com/mediapeers/ansible-role-virtualbox.svg?branch=master)](https://travis-ci.com/mediapeers/ansible-role-virtualbox)

# Ansible role Virtualbox
Installs headless [Virtualbox](https://www.virtualbox.org/) and [phpVirtualbox](https://github.com/phpvirtualbox/phpvirtualbox) for remote access
through Web GUI. Meant for a headless Ubuntu or Debian servers.

Once the role has run through you can access the VirtualBox GUI from a browser by opening `http://<HostnameOrIP>/`.
Use the IP or the hostname here that Ansible was running against. Make sure port 80 is not blocked by any firewall.

For the first login use `admin:admin`. See more details in the [phpVirtualbox docs](https://github.com/phpvirtualbox/phpvirtualbox/wiki/Authentication-in-phpVirtualBox#logging-in-for-the-first-time)

## Requirements
Tested with Ubuntu 14.04 and 16.04. Probably works with all Debian and Ubuntu flavours and versions which are not too old.

## Role Variables
Those are the role variables you probably want to change:

* `virtualbox_user: vbox` - User that runs Virtualbox deamon and phpVirtualbox connects to. This is NOT the user for signing in to the phpVirtualbox GUI
* `virtualbox_user_pw: abc123` - Plaintext PW for virtualbox daemon user, needed for phpVirtualbox connection config.

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
