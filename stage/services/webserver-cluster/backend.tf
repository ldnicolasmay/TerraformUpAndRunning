terraform {
  backend "s3" {
    # S3
    bucket = "terraform-up-and-running-state-ldnicolasmay"
    key    = "stage/services/webserver-cluster/terraform.tfstate"
    region = "us-east-2"

    # DynamoDB
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

