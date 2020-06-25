Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.hostsupdater.aliases = ["development.local"]

  # synced folder -- connection both ways
  # config.vm.synced_folder("path in origin folder to sync", "path in machine folder to sync")
  config.vm.synced_folder "app", "/app"

  config.vm.provision "shell", path: "environment/provision.sh"

end
