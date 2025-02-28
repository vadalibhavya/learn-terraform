# Normal Variables

variable "x" {
    default = 10
}

variable "y" {
    default = 20
}

output "sum" {
    value = var.x + var.y
}
#list variables

variable "names" {
    default = ["A", "B", "C"]
}

output "first_name" {
    value = var.names[0]
}

output "last_name" {
    value = var.names[2]
}