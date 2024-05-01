##Install in Amazon Ubuntu
#!/bin/bash

##Use sudo apt update command to update software packages
sudo apt update -y

##Docker requires some packages to be installed. You can install them using the following command
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

##This command is used to download the Docker repository's GPG key and add it to the system's list of trusted keys, allowing the system to verify the authenticity of Docker packages before installing them.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


##This command adds the Docker repository to the list of package sources on an Ubuntu system. Specifically, it adds the Docker repository for Ubuntu Bionic (18.04 LTS) and specifies that it's for the "stable" version of Docker. The `-y` flag is used to automatically answer "yes" to prompts, allowing for non-interactive execution, typically in scripts or automated setups.
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y


sudo apt update -y

apt-cache policy docker-ce -y

sudo apt install docker-ce -y

#sudo systemctl status docker

sudo chmod 777 /var/run/docker.sock
