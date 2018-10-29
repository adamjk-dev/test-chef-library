# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "nrel/CentOS-6.5-x86_64"
 
  config.vm.provision "shell", inline: <<-SHELL
    export PATH=$PATH:/opt/chef/bin
  SHELL

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    chef.add_role("example")
  end
end
