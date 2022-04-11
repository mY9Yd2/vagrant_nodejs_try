Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 2
  end
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 4567, host: 4567, host_ip: "127.0.0.1"
  config.ssh.extra_args = ["-t", "cd /vagrant; bash --login"]
end
