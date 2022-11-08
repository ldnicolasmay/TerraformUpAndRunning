output "address" {
  value       = module.mysql.address
  description = "Connect to the database at this endpoint"
}

output "port" {
  value       = module.mysql.port
  description = "The port the database is listening on"
}

output "name" {
  value       = module.mysql.name
  description = "The name of the database"
}
