output "instance_id" {
    value = aws_instance.demo_instance.id
}

output "instance_public_ip" {
    value = aws_instance.demo_instance.public_ip
  
}