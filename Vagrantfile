# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

def use_box
  built_box = "./builds/Ubuntu-12.04-x86_64.box"
  if File.exists?(built_box)
    box = built_box
  else
    box = "https://github.com/cosmo0920/packer-template-Ubuntu-12.04.4-amd64-for-Ruby-GNOME2/releases/download/20140920/Ubuntu-12.04-x86_64.box"
  end
  box
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise_Ruby-GNOME2"
  config.vm.box_url = use_box
  config.vm.box_check_update = true

  config.vm.network "forwarded_port", guest: 80, host: 8081
  config.vm.network "private_network", ip: "192.168.33.112"
  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
end
