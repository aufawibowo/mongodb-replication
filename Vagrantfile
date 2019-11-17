Vagrant.configure("2") do |config|

  (1..2).each do |i|
    config.vm.define "mongo_config_#{i}" do |set|
        set.vm.hostname = "mongo-config-#{i}"
        set.vm.box = "bento/ubuntu-18.04"
        set.vm.network "private_network", ip: "192.168.212.#{i+1}"
        set.vm.provider "virtualbox" do |vb|
          vb.name = "config-#{i}"
          vb.gui = false
          vb.memory = "1024"
        end
        set.vm.provision "shell", path: "provision/config-server-#{i}.sh", privileged: false
    end
  end

  (1..3).each do |i|
    config.vm.define "mongo_shard_#{i}" do |set|
        set.vm.hostname = "mongo-shard-#{i}"
        set.vm.box = "bento/ubuntu-18.04"
        set.vm.network "private_network", ip: "192.168.212.#{3+i}"
        set.vm.provider "virtualbox" do |vb|
          vb.name = "shard-#{i}"
          vb.gui = false
          vb.memory = "1024"
        end
        set.vm.provision "shell", path: "provision/mongo-shard-#{i}.sh", privileged: false
    end
  end

  config.vm.define "router" do |set|
    set.vm.hostname = "router"
    set.vm.box = "bento/ubuntu-18.04"
    set.vm.network "private_network", ip: "192.168.212.7"
    set.vm.provider "virtualbox" do |vb|
      vb.name = "router"
      vb.gui = false
      vb.memory = "1024"
    end
    set.vm.provision "shell", path: "provision/router.sh", privileged: false
  end

end