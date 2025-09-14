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
