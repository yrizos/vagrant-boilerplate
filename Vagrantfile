Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    # config.vm.box_version = "v20190604.0.0"     
    config.vm.box_check_update = false
    config.vm.box_download_insecure = true
  
    config.vm.provider "virtualbox" do |vb|
        vb.name = "vagrant-boilerplate"
        
        vb.memory = 3072
        vb.cpus = 2
        
        vb.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
    end
  
    # config.vm.network "private_network", ip: "192.168.50.4"
    # config.vm.network "forwarded_port", guest: 80, host: 80
  
    config.vm.synced_folder "./.", "/home/vagrant/code", :nfs => true, :linux_nfs_options => ['rw', 'no_subtree_check', 'all_squash', 'async']
  
    # config.vm.provision :shell, :path => "./provision/provision-system.sh"
  
  end

  