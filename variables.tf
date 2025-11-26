variable "db_user" {
    type = string
    default = "imen"
}

variable "db_password" {
    type = string
    sensitive = true
    default = "new-password"
}

variable "db_name" {
    type = string
    default = "pg-db"
}

variable "db_port" {
    type = number
    default = 5432
}

variable "app-port-internal" {
    type = number
    default = 8080
}

variable "app-port-external" {
    type = number
    default = 8080
}