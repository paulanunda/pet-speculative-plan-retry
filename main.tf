variable "length" {}

resource "random_pet" "name" {
 length    = var.length
 separator = "-"
}

resource "null_resource" "helloWorld1" {
  provisioner "local-exec" {
    command = "echo Helloo ${random_pet.name.id}"
  }
}
