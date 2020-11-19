sudo yum install -y yum-utils git
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo yum upgrade -y
cd /vagrant/
sudo systemctl start docker
docker network create traefik-proxy
cd bookstack
# MYSQL_ROOT_PASSWORD=""
# DB_DATABASE=""
# DB_USER=""
# DB_PASS=""
# LDAP_SERVER=""
# LDAP_BASE_DN=""
# LDAP_DN=""
# LDAP_PASS=""
docker-compose up -d
cd ../gitlab
# AP_DOMAIN_IP=""
# LDAP_BIND_DN=""
# LDAP_SECRET=""
# LDAP_BASE=""
docker-compose up -d
cd ../kanboard
docker-compose up -d
cd ../traefik
docker-compose up -d