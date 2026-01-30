provider "local" {
}
resource "local_file" "terraform"{
filename="terraform.txt"
content="terraform-jenkins-integration"
}
