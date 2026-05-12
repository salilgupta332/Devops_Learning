# resource "local_file" "my_file" {
#     filename = "hello.txt"
#     content = "Hello. Terraform!"
# }


provider "aws" {
  region = var.aws_region
}
