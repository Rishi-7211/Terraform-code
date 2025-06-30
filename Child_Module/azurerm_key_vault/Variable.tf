variable "key_vault_name"{
    description = "Name of the Key vault"
    type = string       
}
variable "key_vault_location"{
    description = "Location of the Key Vault"
    type = string
}
variable "key_vault_resource_group_name"{
    description = "Name of the resource_group_name"
    type = string
}
variable "sql_password" {
  type        = string
  description = "SQL Admin password"
  sensitive   = true
}