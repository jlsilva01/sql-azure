# resource "azurerm_mssql_server" "sql_002" {
#   name                         = "satc-sqlserver-002"
#   resource_group_name          = var.resource_group_name
#   location                     = var.location_002
#   version                      = "12.0"
#   administrator_login          = var.usuario_admin
#   administrator_login_password = var.password
# }

# resource "azurerm_mssql_database" "sql_002" {
#   name                        = "dados"
#   server_id                   = azurerm_mssql_server.sql_002.id
#   collation                   = "SQL_Latin1_General_CP1_CI_AS"
#   auto_pause_delay_in_minutes = -1
#   max_size_gb                 = 64
#   min_capacity                = 10
#   read_replica_count          = 0
#   read_scale                  = false
#   sku_name                    = "GP_S_Gen5_10"
#   zone_redundant              = false
#   geo_backup_enabled          = false

# }

# data "http" "meuip_002" {
#   url = "https://api.ipify.org"

#   # Opcional: header da requisição
#   request_headers = {
#     Accept = "application/text"
#   }
# }

# resource "azurerm_mssql_firewall_rule" "sql_002" {
#   name             = "RegraFWInternet"
#   server_id        = azurerm_mssql_server.sql_002.id
#   start_ip_address = data.http.meuip_002.body
#   end_ip_address   = data.http.meuip_002.body
# }
