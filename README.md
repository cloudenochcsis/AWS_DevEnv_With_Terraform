# AWS Developer Environment with Terraform

This project is a hands-on guide to building a development environment on **Amazon Web Services (AWS)** using **Terraform**. It's designed to help you learn the basics of Terraform while creating a functional and fun setup.

---

## About the Project

This project is part of a learning journey inspired by **Derek Morgan**'s course on Terraform and AWS. You can find the course here:  
👉 [Build a Dev Environment with Terraform and AWS](https://morethancertified.com/course/rfp-terraform)

---

## Infrastructure Components

- VPC with DNS support
- Public subnet
- Internet Gateway
- Route Table with public route
- Security Group allowing SSH, HTTP, and HTTPS traffic
- Latest Amazon Linux 2 AMI (auto-detected)
- EC2 instance with Docker and Docker Compose
- SSH key pair configuration
- User data script to install and configure the environment

---

## Prerequisites

Before you begin, ensure you have the following:

1. **AWS Account**: Sign up for a free account at [AWS Management Console](https://aws.amazon.com/).
2. **Terraform Installed**: Download and install Terraform from [terraform.io](https://www.terraform.io/) (version >= 1.0.0).
3. **AWS CLI**: Install the AWS CLI from [AWS CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
4. **SSH Key Pair**: Generate an SSH key pair if you don't have one: `ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa`

---

## Getting Started

### Step 1: Clone the Repository

```bash
git clone https://github.com/your-username/AWS_DevEnv_With_Terraform.git
cd AWS_DevEnv_With_Terraform
```

### Step 2: Authenticate with AWS

Configure your AWS credentials using the AWS CLI:

```bash
aws configure
```

### Step 3: Customize Configuration (Optional)

Edit `terraform.tfvars` to customize the deployment according to your preferences.

### Step 4: Initialize and Apply Terraform

Initialize Terraform and create the resources:

```bash
terraform init
terraform plan
terraform apply
```

### Step 5: Connect to Your Instance

After successful deployment, you can connect to your instance using:

```bash
ssh devenv
```

---

## Variables

| Name | Description | Default |
|------|-------------|---------|
| region | AWS region to deploy resources | us-west-2 |
| vpc_cidr | CIDR block for VPC | 10.0.0.0/16 |
| subnet_cidr | CIDR block for subnet | 10.0.1.0/24 |
| instance_type | EC2 instance type | t2.micro |
| enable_public_ip | Enable public IP address for EC2 instance | true |
| environment | Environment name | dev |
| ssh_key_name | Name of the SSH key pair | dev-key |
| ssh_public_key_path | Path to public SSH key | ~/.ssh/id_rsa.pub |
| allowed_ip | IP address allowed to SSH into the instance | 0.0.0.0/0 |

---

## Outputs

| Name | Description |
|------|-------------|
| vpc_id | ID of the VPC |
| public_subnet_id | ID of the public subnet |
| security_group_id | ID of the security group |
| instance_id | ID of the EC2 instance |
| public_ip | Public IP address of the EC2 instance |
| ssh_command | Command to SSH into the EC2 instance |
| instance_state | Current state of the EC2 instance |
| ami_id | ID of the AMI used for the EC2 instance |

---

## Cleanup

To remove all resources created by this Terraform configuration:

```bash
terraform destroy
```

---

## Acknowledgments

- **Derek Morgan** for the inspiration and guidance through his course: [Build a Dev Environment with Terraform and AWS](https://morethancertified.com/course/rfp-terraform).