sudo bash /vagrant/provision/allhost.sh

# Override mongod config with current config
sudo cp /vagrant/conf/config-server-1.conf /etc/mongod.conf

# Restart the mongo service 
sudo systemctl restart mongod

# weird
# sleep 5 

# Create administratif 
# mongo mongo-config-1:27019 < /vagrant/mongo/create_admin.mongo

# Init replica set
# mongo mongo-config-1:27017 -u mongo-admin -p --authenticationDatabase admin < /vagrant/mongo/init_repl_set.mongo