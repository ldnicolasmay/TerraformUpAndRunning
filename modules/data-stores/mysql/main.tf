resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  skip_final_snapshot = true
  db_name             = var.db_name
  #db_name             = "example_database"

  # Secrets to be passed via env vars:
  #   $ export TF_VAR_db_username="foo"
  #   $ export TF_VAR_db_password="bar"
  username = var.db_username
  password = var.db_password
}
