
output "sqlserver_001" {
  value = azurerm_mssql_server.sql.name
}

output "sqlserver_002" {
  value = azurerm_mssql_server.sql_002.name
}


output "database_001" {
  value = azurerm_mssql_database.sql.name
}

output "database_002" {
  value = azurerm_mssql_database.sql_002.name
}

output "username" {
  value = var.usuario_admin
}

output "password" {
  value = var.password
}

output "ip" {
  value = data.http.meuip.body
}
