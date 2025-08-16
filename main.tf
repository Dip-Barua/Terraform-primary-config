terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "terraform_config" {
  ami           = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"

  tags = {
    Name = "primary-terraform-config"
    }
  }


resource "aws_s3_bucket" "terraform_state" {

    bucket = "terraform-state-bucket-${random_id.unique_id.hex}"    
    tags = {
        Name = "primary-terraform-state-bucket"
        Environment = "Infrastructure"
    }    
}

resource "random_id" "unique_id" {
    byte_length = 4
    
  }