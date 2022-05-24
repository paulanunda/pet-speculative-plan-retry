variable "length" {}

resource "random_pet" "name" {
 length    = var.length
 separator = "-"
}

resource "null_resource" "helloWorld1" {
  provisioner "local-exec" {
    command = "echo Helloоо ${random_pet.name.id}"
  }
}
