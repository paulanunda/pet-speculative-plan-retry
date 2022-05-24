resource "random_pet" "name" {
 length    = "4"
 separator = "-"
}

resource "null_resource" "helloWorld1" {
  provisioner "local-exec" {
    command = "echo Hello ${random_pet.name.id}"
  }
}

resource "null_resource" "helloWorld2" {
  provisioner "local-exec" {
    command = "echo Hello ${random_pet.name1.id}"
  }
}
