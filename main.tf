
# resource "aws_ssm_parameter" "foo" {
#   name  = "foobar3"
#   type  = "String"
#   value = "bar"
# }

# resource "aws_vpc" "main" {
#   cidr_block       = "10.1.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "main-vpc"
#   }
# }

# output "filename" {
#   value = "${path.module}"
# }

resource "aws_instance" "webserver" {
  ami = "ami-0d78d8707cd9c1be8"
  instance_type = "t2.micro"
  #key_name = file("${path.module}/id_rsa_pub")
  key_name = "canadakey"
  tags = {
    Name = "test-instance"
  }
}