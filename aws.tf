terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASJ7QPMO34XHHXSBY"
  secret_key = "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"
}

resource "aws_instance" "s1" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "server1"
  }
}
resource "aws_instance" "s2" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "server2"
  }
}
resource "aws_instance" "s3" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "server3"
  }
}
