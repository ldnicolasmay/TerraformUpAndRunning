module "mysql" {
  source = "../../../modules/data-stores/mysql"

  db_name     = "mysql_prod"
  db_username = var.db_username
  db_password = var.db_password
}