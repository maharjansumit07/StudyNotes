#!/bin/bash

# from :   https://www.jenkins.io/doc/book/installing/linux/#debianubuntu
# To Install Jenkins for Ubuntu as of June 20. 2024
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install -y jenkins


# We need Java as well for Jenkins to run. 
sudo apt update
sudo apt install -y fontconfig openjdk-17-jre
java -version
openjdk version "17.0.8" 2023-07-18
OpenJDK Runtime Environment (build 17.0.8+7-Debian-1deb12u1)
OpenJDK 64-Bit Server VM (build 17.0.8+7-Debian-1deb12u1, mixed mode, sharing)


# Add Jenkins to sudo users or add to sudo group or manually add Jenkins user on sudoers file at /etc/sudoers with command 'sudo visudo'

# Set the Jenkins user
#JENKINS_USER="Jenkins"

# Add the Jenkins user to the sudoers file
#sudo echo "$JENKINS_USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
sudo echo "Jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

echo "# Jenkins user has been added to the sudoers file."
