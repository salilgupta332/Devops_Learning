variable "aws_instance_type" {
  description = "The type of instance to use for the EC2 instance."
  type        = string
  default     = "t2.micro"
  
}

variable "ec2_ami" {

    description = "The AMI ID to use for the EC2 instance."
    type        = string
    default     = "ami-07a00cf47dbbc844c"
  
}

variable "root_default_block_volume_size" {
  description = "The size of the root block volume for the EC2 instance."
  type        = number
  default     = 15
}

variable "env" {
    description = "The environment for which the infrastructure is being provisioned."
    type        = string
    default     = "dev"
  
}