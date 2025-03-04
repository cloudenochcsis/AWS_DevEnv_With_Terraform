#!/bin/bash

# Update packages
sudo yum update -y

# Install Docker
sudo amazon-linux-extras install docker -y

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add ec2-user to the docker group
sudo usermod -aG docker ec2-user

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Create a welcome message
echo "Welcome to ${environment} environment with Docker!" > /home/ec2-user/welcome.txt
echo "Docker and Docker Compose have been installed." >> /home/ec2-user/welcome.txt

# Set file permissions
sudo chown ec2-user:ec2-user /home/ec2-user/welcome.txt