output "ec2_public_ip" {
    description = "This block will output public ip of ec2"
    value = aws_instance.my-instace.public_ip
    
}

output "ec2_public_dns" {
  description = "this will show public dns of ec2"
  value = aws_instance.my-instace.public_dns
}