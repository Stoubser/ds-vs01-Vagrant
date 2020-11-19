Vagrant.configure("2") do |config|
  config.vm.box = "centos/8"
  config.vm.box_version = "1905.1"
  config.vm.provision "shell", path: "docker.sh"
  config.vm.synced_folder "ds-vs01_docker-configs/", "/vagrant"
  config.vm.customize ["modifyvm", :id, "--memory", 9216]
  config.vm.customize ["modifyvm", :id, "--cpus", 4]
end