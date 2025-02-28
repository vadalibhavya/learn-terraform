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

#map varaiables

variable "person" {
    default = {
        name = "John"
        age = 30
        city = "New York"
    }
}
output "name" {
    value = "Name is ${var.person["name"]}, Age is ${var.person["age"]}, City is ${var.person["city"]}"
}
# tfvars - manually loaded, meaning it is not loaded from a file
# terraform apply -auto-approve -var-file=data.tfvars

variable "input" {}
output "input" {
    value = var.input
}

variable "class" {}
output "class" {
    value = "the class that is in is - ${var.class}"
}
# terraform apply -auto-approve -var-file=data.tfvars # this will automatically load the data.tfvars and will override the class variable
# terraform apply -auto-approve

variable "trainer"{}
output "trainer" {
    value = "the trainer is - ${var.trainer}"
}