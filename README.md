
# AWS Dev Env With Terraform

This project is a hands-on guide to building a development environment on **Amazon Web Services (AWS)** using **Terraform**. It’s designed to help you learn the basics of Terraform while creating a functional and fun setup.

---

## About the Project

This project is part of a learning journey inspired by **Derek Morgan**'s course on Terraform and AWS. You can find the course here:  
👉 [Build a Dev Environment with Terraform and AWS](https://morethancertified.com/course/bade-terraform-aws)

---

## Features

- **Infrastructure as Code (IaC)**: Use Terraform to define and provision AWS resources.
- **Dev Environment Setup**: Quickly spin up a development environment on AWS.
- **Learning-Focused**: Perfect for beginners looking to get hands-on with Terraform and AWS.

---

## Prerequisites

Before you begin, ensure you have the following:

1. **AWS Account**: Sign up for a free account at [AWS Management Console](https://aws.amazon.com/).
2. **Terraform Installed**: Download and install Terraform from [terraform.io](https://www.terraform.io/).
3. **AWS CLI**: Install the AWS CLI from [AWS CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
4. **Git**: Install Git from [git-scm.com](https://git-scm.com/).

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

### Step 3: Initialize Terraform

Initialize Terraform to download the necessary providers:

```bash
terraform init
```

### Step 4: Apply the Configuration

Review the Terraform plan and apply the configuration to create the AWS resources:

```bash
terraform plan
terraform apply
```
---

## Acknowledgments

- **Derek Morgan** for the inspiration and guidance through his course: [Build a Dev Environment with Terraform and AWS](https://morethancertified.com/course/bade-terraform-aws).
