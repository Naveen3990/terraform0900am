variable "aws_region" {
  default = "ap-south-1"
}

variable "db_name" {
  default = "mydb"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  sensitive = true
}