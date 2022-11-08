###########
### VPC ###
###########

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

###########################################
### Terraform remote state for MySQL DB ###
###########################################

data "terraform_remote_state" "db" {
  backend = "s3"

  config = {
    #bucket = "terraform-up-and-running-state-ldnicolasmay"
    #key    = "stage/data-stores/mysql/terraform.tfstate"
    bucket = var.db_remote_state_bucket
    key    = var.db_remote_state_key
    region = "us-east-2"
  }
}
