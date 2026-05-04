#key pair

resource "aws_key_pair" "my-key" {
  key_name   = "terraform-key"
  public_key = file("terraform-key.pub")
}

#vpc

resource "aws_default_vpc" "my-vpc" {

}

#security group

resource "aws_security_group" "my-sg" {
  name        = "terraform-sg"
  description = "Security group for Terraform EC2 instance"
  vpc_id      = aws_default_vpc.my-vpc.id # -> this thing is call interpolation, we can use the output of one resource as input to another resource
  ingress  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH traffic"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTP traffic"
  }

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow custom traffic"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-sg"
  }


}


#ec2 instance

resource "aws_instance" "my-instace" {

    key_name = aws_key_pair.my-key.key_name
    security_groups = [aws_security_group.my-sg.name]
    instance_type = "t2.micro"
    ami = "ami-07a00cf47dbbc844c" 
    root_block_device {
      volume_size = 15
      volume_type = "gp3"
    }
    tags = {
      Name = "terraform-instance"
    }

}