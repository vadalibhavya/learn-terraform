# learn-terraform
learn-terraform

# Normal variable
variable "x" {
    default = 10
}

output "x" {
    value = var.x
}

output "y" {
    value = "value of the x is ${var.x}
}