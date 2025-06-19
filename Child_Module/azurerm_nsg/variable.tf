variable "nsg_name"{
    description = "name of the NSG"
    type = string
}
variable "nsg_location" {
    description = "Location of NSG"
    type = string
}
variable "nsg_resource_group_name" {
    description = "name of the NSG resource_group"
    type = string
}
variable "nic_name"{
    description = "name of the NIC"
    type = string

}
variable "nic_resource_group_name"{
    description = "NIC resource group name"
    type = string
}