resource "local_file" "my_world" {
  filename = var.filename
  content  = var.content
  }
resource "random_pet" "petname" {
  prefix    = var.prefix
  separator = "."
  length    = var.length
}
