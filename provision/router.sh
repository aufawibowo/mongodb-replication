sudo bash /vagrant/provision/allhost.sh

# Override mongod config with current config
sudo cp /vagrant/conf/router.conf /etc/mongos.conf

# Create new service file
sudo touch /lib/systemd/system/mongos.service
sudo cp /vagrant/mongos.service /lib/systemd/system/mongos.service

# Stop current mongo service
sudo systemctl stop mongod

# Enable mongos.service
sudo systemctl enable mongos.service
sudo systemctl start mongos

# Confirm mongos is running
systemctl status mongos