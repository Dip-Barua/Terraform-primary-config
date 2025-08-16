# Terraform AWS EC2 & S3 Configuration

## Overview
This Terraform configuration provisions an EC2 instance and an S3 bucket in the `us-east-1` region. The S3 bucket name is globally unique, achieved through a randomly generated ID.

---

## Steps

### 1. Install Terraform  
Follow the instructions [here](https://www.terraform.io/downloads.html) to install Terraform.

### 2. Configure AWS Credentials  
Set up your AWS credentials using the AWS CLI:
```bash
aws configure
```

### 3. Initialize Terraform  
Initialize Terraform to download providers:
```bash
terraform init
```

### 4. Apply Configuration  
Apply the configuration to create the resources:
```bash
terraform apply
```

### 5. Verify Resources  

EC2 Instance: Check in the AWS EC2 console.

S3 Bucket: Check in the AWS S3 console.

### 6. Destroy Resources  
To remove the resources:

```bash
terraform destroy
```

### Files
main.tf

Defines the EC2 instance, S3 bucket (with random ID), and provider.

random_id

Ensures the S3 bucket name is unique.

### Tags

EC2: Name = "primary-terraform-config"

S3: Name = "primary-terraform-state-bucket", Environment = "Infrastructure"


