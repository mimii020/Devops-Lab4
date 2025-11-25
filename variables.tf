variable "db_user" {
    type = string
    default = "imen"
}

variable "db_password" {
    type = string
    sensitive = true
    default = "12345678"
}

variable "db_name" {
    type = string
    default = "pg-db"
}

variable "db_port" {
    type = number
    default = 5432
}