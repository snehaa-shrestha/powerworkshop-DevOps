# php-hello-world
A simple hello-world for composer

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

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Installation using Dockerfile
------------

Build Docker Imagebash
docker build -t workshop .
Run Docker Imagebash
docker run -dp 0.0.0.0:8081:80 workshop
Installation using docker-compose.yml
------------

Build and run Docker Imagebash
docker-compose up -d
Access the Application
------------

Access the application using <ip-address>:8081

![Site Demo](https://github.com/snehaa-shrestha/powerworkshop-DevOps/blob/main/images/Web%20Browser.png)

Configure GitHub Actions
------------

![GitHub Actions](https://github.com/snehaa-shrestha/powerworkshop-DevOps/blob/main/images/GitHub%20Action%20Workflow.png)

Pushing Image to DockerHub
------------

Build Docker Imagebash
docker build -t your_username/devops-workshop:php-hello-world .
Login to DockerHubbash
docker login
Push the Docker Imagebash
docker push your_username/devops-workshop:php-hello-world
![DockerHub](https://github.com/snehaa-shrestha/powerworkshop-DevOps/blob/main/images/dockerhub%20tag.png)

docker ps
![Docker Ps](https://github.com/snehaa-shrestha/powerworkshop-DevOps/blob/main/images/docker%20ps.png)