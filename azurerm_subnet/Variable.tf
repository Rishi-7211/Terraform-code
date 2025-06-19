variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string
}
variable "resource_group_location" {
  description = "The Azure region where the resource group will be created."
  type        = string
}   
variable "subnet_name" {
  description = "The name of the subnet to create."
  type        = string
  
}
variable "virtual_network_name" {
  description = "The name of the virtual network to create."
  type        = string
  
}
variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  type        = list(string)
}