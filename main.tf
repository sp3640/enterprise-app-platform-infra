module "resource_group" {
  source = "./modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "storage_account" {
  source = "./modules/storage-account"

  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
}

module "key_vault" {
  source = "./modules/key-vault"

  key_vault_name      = var.key_vault_name
  resource_group_name = var.resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
}

