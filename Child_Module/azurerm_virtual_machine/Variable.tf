variable "virtual_machine_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the virtual machine will be created."
  type        = string
}

variable "resource_location" {
  description = "The Azure region where the virtual machine will be created."
  type        = string
}

variable "virtual_machine_username" {
  description = "The username for the virtual machine."
  type        = string
}

variable "virtual_machine_password" {
  description = "The password for the virtual machine."
  type        = string
}

variable "nic_name" {
  description = "The name of the child NIC"
  type        = string
}