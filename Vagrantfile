Vagrant.configure(2) do |config|
  config.vm.hostname = "vagrant-dockereclipseche"
  config.vm.provider :virtualbox do |vb|
  config.vm.network "forwarded_port", host: 8080, guest: 8080

  for i in 32700..32800
    config.vm.network :forwarded_port, guest: i, host: i
  end
    
  config.vm.box = "ubuntu/trusty64"
    vb.customize ["modifyvm", :id,
            "--name", "vagrant-dockereclipseche",
            "--memory", "4096",
            "--natdnshostresolver1", "on"]
   
  end
    
  config.vm.provision :shell, path: "bootstrap.sh"
end
