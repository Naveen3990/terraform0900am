variable "name" {
  type = string
}

variable "ami_idd" {
  type = string
}

variable "instance_type" {
  type    = string
  default = ""
}

variable "subnet_id" {
  type = string
  default = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}

