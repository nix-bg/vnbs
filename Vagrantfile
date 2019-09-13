# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  config.vm.define 'zslgw.local' do |node|
    node.vm.box = "ubuntu/bionic64"
    node.vm.hostname = "zslgw.local"
    node.vm.network :private_network, ip: '192.168.250.10'
    node.vm.network :private_network, ip: '10.100.0.1', virtualbox__intnet: true
    node.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
      v.gui = false
    end

    node.vm.provision "router", type: "ansible" do |ansible|
        ansible.inventory_path = "ansible/hosts.yml"
        ansible.playbook = "ansible/playbooks/router.yml"
    end

    node.vm.provision "dhcp", type: "ansible" do |ansible|
        ansible.inventory_path = "ansible/hosts.yml"
        ansible.playbook = "ansible/playbooks/dhcp.yml"
    end

    node.vm.provision "pxe", type: "ansible" do |ansible|
        ansible.inventory_path = "ansible/hosts.yml"
        ansible.playbook = "ansible/playbooks/pxe.yml"
    end

    node.vm.provision "preseed", type: "ansible" do |ansible|
        ansible.inventory_path = "ansible/hosts.yml"
        ansible.playbook = "ansible/playbooks/preseed.yml"
    end
  end
end
