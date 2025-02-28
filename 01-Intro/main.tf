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
