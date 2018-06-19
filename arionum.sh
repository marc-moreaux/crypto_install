# install PHP
sudo apt-get update
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2
sudo apt-get install php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml php-gmp

# Install wallet
mkdir arionum
git clone https://github.com/arionum/lightWalletCLI arionum/lightWalletCLI 
arionum/lightWalletCLI/light-arionum-cli

# Install miner
wget https://github.com/ProgrammerDan/arionum-java/releases/download/0.2.5/arionum-miner-java.jar
sudo apt-get install openjdk-8-jdk maven git gcc make build-essential -y
git clone git://github.com/Programmerdan/arionum-java arionum/arionum-java
cd arionum/arionum-java/arionum-miner
mvn clean package
chmod +x build-argon.sh
./build-argon.sh
cd -
arionum/arionum-java/arionum-miner/run.sh


