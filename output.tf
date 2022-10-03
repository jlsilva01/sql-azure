
output "azurerm_mssql_server_name" {
  value = azurerm_mssql_server.sql.name
}

output "azurerm_mssql_database_name" {
  value = azurerm_mssql_database.sql.name
}

output "username" {
  value = var.usuario_admin
}

output "password" {
  value = var.password
}
