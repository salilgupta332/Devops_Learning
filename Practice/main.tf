provider "aws" {

  region = var.region

}
resource "aws_instance" "demo_instance" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}

