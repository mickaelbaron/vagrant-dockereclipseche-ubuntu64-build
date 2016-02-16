apt-get update -y

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
touch /etc/apt/sources.list.d/docker.list
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" >> /etc/apt/sources.list.d/docker.list

apt-get update -y
apt-get purge lxc-docker* -y
apt-cache policy docker-engine

apt-get install docker-engine -y
usermod -aG docker vagrant

apt-get install python-software-properties -y
add-apt-repository ppa:webupd8team/java -y
apt-get update -y
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get install -y oracle-java8-installer
bash -c "echo JAVA_HOME=/usr/lib/jvm/java-8-oracle >> /etc/environment"
echo "********* Java installed *********"

apt-get install -y unzip

wget https://install.codenvycorp.com/che/eclipse-che-nightly.zip
unzip eclipse-che-nightly.zip -d eclipse-che-nightly
chown -R vagrant:vagrant eclipse-che-nightly

wget https://install.codenvycorp.com/che/eclipse-che-latest.zip
unzip eclipse-che-latest.zip -d eclipse-che-latest
chown -R vagrant:vagrant eclipse-che-latest
