terraform {
  backend "s3" {
    # S3
    bucket = "terraform-up-and-running-state-ldnicolasmay"
    key    = "workspaces-example/terraform.tfstate"
    region = "us-east-2"

    # DynamoDB
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
}