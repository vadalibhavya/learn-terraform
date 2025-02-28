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