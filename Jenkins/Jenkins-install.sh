#!/bin/bash

# Install Jenkins for Ubuntu as of June 20, 2024
# Add Jenkins keyring
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins repository
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package list and install Jenkins
sudo apt-get update
sudo apt-get install -y jenkins

# Install Java (OpenJDK 17)
sudo apt update
sudo apt install -y fontconfig openjdk-17-jre
java -version

# Check if the Jenkins user exists
if id "Jenkins" &>/dev/null; then
  echo "Jenkins user exists."
else
  echo "Jenkins user does not exist. Creating Jenkins user..."
  sudo useradd -m -s /bin/bash Jenkins
fi

# Add Jenkins user to sudoers file
echo "Jenkins ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers

echo "# Jenkins user has been added to the sudoers file."
