# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true

  config.vm.box = "centos/7"

  config.vm.define :node01 do |host|
    PRIVATE_IP_ADDRESS = "192.168.33.11"
    SERF_JOIN_ADDRESS = "192.168.33.11"
    SERF_ARGS = PRIVATE_IP_ADDRESS + " " + SERF_JOIN_ADDRESS

    host.vm.hostname = "node01"
    host.vm.network "private_network", ip: PRIVATE_IP_ADDRESS
    host.vm.provision :shell, path: "install-serf.sh"
    host.vm.provision :shell, path: "run-serf.sh", args: SERF_ARGS
  end

  config.vm.define :node02 do |host|
    PRIVATE_IP_ADDRESS = "192.168.33.12"
    SERF_JOIN_ADDRESS = "192.168.33.11"
    SERF_ARGS = PRIVATE_IP_ADDRESS + " " + SERF_JOIN_ADDRESS

    host.vm.hostname = "node02"
    host.vm.network "private_network", ip: PRIVATE_IP_ADDRESS
    host.vm.provision :shell, path: "install-serf.sh"
    host.vm.provision :shell, path: "run-serf.sh", args: SERF_ARGS
  end

  config.vm.define :node03 do |host|
    PRIVATE_IP_ADDRESS = "192.168.33.13"
    SERF_JOIN_ADDRESS = "192.168.33.11"
    SERF_ARGS = PRIVATE_IP_ADDRESS + " " + SERF_JOIN_ADDRESS

    host.vm.hostname = "node03"
    host.vm.network "private_network", ip: PRIVATE_IP_ADDRESS
    host.vm.provision :shell, path: "install-serf.sh"
    host.vm.provision :shell, path: "run-serf.sh", args: SERF_ARGS
  end

  config.vm.define :node04 do |host|
    PRIVATE_IP_ADDRESS = "192.168.33.14"
    SERF_JOIN_ADDRESS = "192.168.33.11"
    SERF_ARGS = PRIVATE_IP_ADDRESS + " " + SERF_JOIN_ADDRESS
    
    host.vm.hostname = "node04"
    host.vm.network "private_network", ip: PRIVATE_IP_ADDRESS
    host.vm.provision :shell, path: "install-serf.sh"
    host.vm.provision :shell, path: "run-serf.sh", args: SERF_ARGS
  end

end
