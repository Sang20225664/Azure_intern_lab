module "rg" {
  source       = "./modules/resource_group"
  rg_name      = var.rg_name
  location     = var.location
  default_tags = var.default_tags

}

module "network" {
  source = "./modules/network"

  prefix       = var.prefix
  location     = var.location
  rg_name      = var.rg_name
  vnet_cidr    = var.vnet_cidr
  default_tags = var.default_tags

  depends_on = [module.rg]
}

module "storage" {
  source = "./modules/storage"

  prefix       = var.prefix
  location     = var.location
  rg_name      = var.rg_name
  default_tags = var.default_tags

  depends_on = [module.rg]

}

module "sql_database" {
  source = "./modules/sql_database"

  prefix             = var.prefix
  rg_name            = var.rg_name
  location           = var.location
  default_tags       = var.default_tags
  sql_admin_login    = var.sql_admin_login
  sql_admin_password = var.sql_admin_password

  depends_on = [module.rg]
}

locals {
  sql_connection_string = "Server=tcp:${module.sql_database.sql_fqdn},1433;Initial Catalog=${module.sql_database.sql_db_name};Persist Security Info=False;User ID=${var.sql_admin_login};Password=${var.sql_admin_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
}


module "keyvault" {
  source                = "./modules/keyvault"
  prefix                = var.prefix
  rg_name               = var.rg_name
  location              = var.location
  default_tags          = var.default_tags
  sql_connection_string = local.sql_connection_string
  secret_name           = "sql-connection-string"
}
