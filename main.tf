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
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-01a7d95ecd129c2f1"
  instance_type = "t2.micro"

  tags = {
    Name = "var.instance_name"
  }
}
