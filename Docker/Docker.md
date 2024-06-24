Docker:

Note: Best works in Linux Kernel. If you have windows, work in virtual box by installing any linux kernel, (ubuntu recommended)

Virtulization 
- technology to create isolated environments to run applications on hardware resource. 

Virtual Machines vs Containers
-- both are virtulization solutions used to create virtual environments isolated from underlying hadware.
-virtual Machines
    - runs on top of Hypervisor,  a software helps to devide physical resources into multiple virtual systems. 
    - has its own completely isolated OS inculding kernel, binaries, libraries and apps. 
- Containers    
    - runs on top os host OS and virtulizes just the os instead of physical server. 
    - shares os kernel and just included apps with their libries and dependenci-es.

![VM vs Container](../Images/VM-vs-Container.jpg)

Benefits of Containers.
-----------------------
 - lightweight, less time to boot and portable.
 - fast in scaling. 
 - independent of underlying infrastructure.
 - favorable for microservice architecture. 
 - source control friendly
 - ideal for automation and CI/CD pipeline implementation.



What is a Docker?
- software framework for building, running, managing and shipping containers 
- it is a client-server architecture. 

Docker Daemon (dockerd) :
- listens for API requests, and manges Docker objects such as images, conatiners, networks and volumes. 

Docker Client:
- tool to interact with docker daemon.

Docker Desktop:
- tool for MAC and Windows to run docker. 

Docker Registries:
- store for docker images.

Docker Objects
    - Images:  Read-only template with instructions for creating docker container
    - Containers : Isolated environments run from image.
    - DockerFile: file with set of instructions to tell container to what to do when it gets built. 
            - we use this file to create image. 

<h2>Docker Architecture</h2>
-----------------------------

![Docker Architecture](../Images/Docker-Architecture.jpg)

-------------------------------------------------------------------------
        
<h3>Install Docker</h3>
----------------
website: https://docs.docker.com/engine/install/ubuntu/
------------------------
shell script on [Link to Docker Install Script](dockerinstall.sh)
when using script, make sure that the .sh file has executive permission. 
$ sudo chmod -x dockerinstall.sh
-------------------------
or copy this and paste in the terminal. 

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update


# To install docker
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# To add Docker to groups and to use it without sudo
 sudo groupadd docker
 sudo usermod -aG docker $USER

 # to activate the changes to groups:
 newgrp docker

-------------------------------------------------------------------------------------
To check if the docker has been installed correctly, 
$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

# Try to run the command as sample. It will display the actual flow of how docker works.
$ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
c1ec31eb5944: Pull complete
Digest: sha256:94323f3e5e09a8b9515d74337010375a456c909543e1ff1538f5116d38ab3989
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

------------------------------------------------------------------







