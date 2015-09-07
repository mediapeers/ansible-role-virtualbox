require 'spec_helper'

describe "Virtualbox host setup" do
  virtualbox_user = ANSIBLE_VARS.fetch('virtualbox_user', 'FAIL')

  describe package("virtualbox-#{ANSIBLE_VARS.fetch('virtualbox_version', 'UNKNOWN')}") do
    it { should be_installed }
  end

  describe package('apache2') do
    it { should be_installed }
  end

  describe package('php5') do
    it { should be_installed }
  end

  describe package('unzip') do
    it { should be_installed }
  end

  describe user(virtualbox_user) do
    it { should exist }
    it { should have_home_directory("/home/#{virtualbox_user}") }
    it { should belong_to_group('vboxusers') }
    it { should have_login_shell('bin/bash') }
#    it { should have_authorized_key('ssh-rsa XYZ') }
  end

  describe file("/home/#{virtualbox_user}/isos") do
    it { should be_directory }
    it { should be_owned_by(virtualbox_user) }
  end

  describe file('/var/www/html/phpvirtualbox') do
    it { should be_directory }
  end

  describe file('/var/www/html/phpvirtualbox/config.php') do
    it { should contain("var $username = '#{virtualbox_user}';") }
    it { should contain("var $password = '#{ANSIBLE_VARS.fetch('virtualbox_user_pw', 'fail')}'") }
  end

  describe file('/etc/default/virtualbox') do
    it { should exist }
    it { should contain("VBOXWEB_USER=#{virtualbox_user}") }
  end

  describe service('vboxweb-service') do
    it { should be_enabled }
  end

end
