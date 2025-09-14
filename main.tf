module "network" {
  source = "./modules/network"

  prefix       = var.prefix
  location     = var.location
  rg_name      = var.rg_name
  vnet_cidr    = var.vnet_cidr
  default_tags = var.default_tags
}

module "storage" {
  source = "./modules/storage"

  prefix       = var.prefix
  location     = var.location
  rg_name      = var.rg_name
  default_tags = var.default_tags
}
