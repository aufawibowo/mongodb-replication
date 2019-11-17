sudo bash /vagrant/sh/allhost.sh

# Override mongod config with current config
sudo cp /vagrant/conf/configserver1.conf /etc/mongod.conf

# Restart the mongo service 
sudo systemctl restart mongod