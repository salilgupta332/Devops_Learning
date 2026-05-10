#outputs for counts
# output "ec2_public_ip" {
#     description = "This block will output public ip of ec2"
#     value = aws_instance.my-instace[*].public_ip #here we are using splat operator [*] to get the public ip of all the instances
    
# }

# output "ec2_public_dns" {
#   description = "this will show public dns of ec2"
#   value = aws_instance.my-instace[*].public_dns
# }




#outputs for for_each
output "ec2_public_ip" {
    description = "This block will output public ip of ec2"
    value = [
        for instance in aws_instance.my-instace : instance.public_ip
    ]
}



#here we are using for loop to get the public ip of all the instances, this is called for expression in terraform, it is more flexible than splat operator as we can add conditions and do more complex operations with it.