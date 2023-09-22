terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAVLQIRAIXARO6TU6F"
  secret_key = "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"
}

resource "aws_instance" "CQ2"{
    ami = "ami-0ed99df77a82560e6"
    instance_type = "t2.micro" 
}

output "public_ip"{
    value = aws_instance.CQ2.public_ip
}





