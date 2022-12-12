terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0283a57753b18025b"
  instance_type = "t2.micro"
  key_name = "IAC-Alura"
  tags = {
    Name = "Terraform Ansible Python"
  }
}
