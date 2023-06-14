# output "key-tf" {
#   value = file("${path.module}/id_rsa_pub")
# }


# Create SSH Key
resource "aws_key_pair" "key-tf" {
  key_name   = "key-terraform"
  public_key = file("${path.module}/id_rsa_pub")
}

# Create instance

resource "aws_instance" "webserver" {
  ami = "ami-0d78d8707cd9c1be8"
  instance_type = "t2.micro"
  #key_name = file("${path.module}/id_rsa_pub")
  key_name = "canadakey"
  tags = {
    Name = "test-instance"
  }
}