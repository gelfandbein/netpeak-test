# -*- mode: ruby -*-
# vi: set ft=ruby :

hosts = {
  "host0" => "192.168.33.10",
  "host1" => "192.168.33.11",
  "host2" => "192.168.33.12"
}

Vagrant.configure("2") do |config|
  config.vm.synced_folder "./data", "/vagrant_data"
  config.vm.boot_timeout = 60
  # config.vm.network "forwarded_port", guest: 22, host: 1234, host_ip: "127.0.0.1", id: 'ssh'

  hosts.each do |name, ip|
    config.vm.define name do |machine|
      machine.vm.box = "ubuntu/bionic64"
      machine.vm.hostname = "%s" % name
      machine.vm.network :private_network, ip: ip
      machine.vm.provider "virtualbox" do |v|
          v.name = name
#          v.cpus = 1
#          v.memory = 256
          v.customize ['modifyvm', :id, '--cableconnected1', 'on']
          v.customize ["modifyvm", :id, "--memory", 256]
          v.customize ["modifyvm", :id, "--cpus", 1]
      end
#    config.vm.provision "shell", inline: <<-SHELL
#      apt-get update
#    SHELL
    end
  end

#  config.vm.provision "shell", inline: <<-SHELL
#    # Install docker and docker compose
#    sudo -i
#    echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
#    curl -sSL https://get.docker.com/ | sh
#    usermod -aG docker vagrant
#    curl -L https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
#    chmod +x /usr/local/bin/docker-compose
#  SHELL

end
