variable "mssql_server_name"{
    description = "mssql server name"
    type = string
}
variable "mssql_resource_group_name" {
    description = "Nam of the resource Group"
    type = string
}
variable "mssql_location"{
    description = "Location of the Mssql server"
    type = string
}
variable "mssql_username"{
    description = "Username of Mssql"
    type = string
}
variable "mssql_password" {
    description = "Password of the Mssql"
    type = string
}