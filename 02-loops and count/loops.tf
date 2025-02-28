terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
resource "null_resource" "dummy" {
  count = length(var.x)

  provisioner "local-exec" {
    command = "echo ${var.x[count.index]}"
  }

}

variable "x" {

  default = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9]
}