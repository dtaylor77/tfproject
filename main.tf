# output "key-tf" {
#   value = file("${path.module}/id_rsa_pub")
# }


# Create SSH Key
# resource "aws_key_pair" "key-tf" {
#   key_name   = "key-terraform"
#   public_key = file("${path.module}/id_rsa_pub")
# }

# Create instance

#resource "aws_instance" "webserver" {
 # ami               = data.aws_ami.ami_id.id
 # instance_type     = "t2.micro"
 # availability_zone = "ca-central-1a"
  #key_name = file("${path.module}/id_rsa_pub")
  key_name               = "canadakey"
  vpc_security_group_ids = [aws_security_group.allow_ports.id]
  subnet_id              = aws_subnet.dev_subnet.id
  tags = {
    Name = "test-instance"
#  }
#}

# Create a VPC

#resource "aws_vpc" "main_vpc" {
  cidr_block = "10.7.0.0/16"
#}

# Create a subnet

#resource "aws_subnet" "dev_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.7.1.0/24"
  availability_zone = "ca-central-1a"

  tags = {
    Name = "dev_subnet"
  #}
#}

# Create a Security Group with dynamic block

#resource "aws_security_group" "allow_ports" {
  name        = "Allow_22/80/443/3389"
  description = "Allow inbound traffic"
  vpc_id      = aws_vpc.main_vpc.id

 # dynamic "ingress" {
    for_each = var.ports
    iterator = port
#   content {
      description = "ingress traffic from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = var.cidr_block_for_SG

 #   }

  #}
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_block_for_SG
    ipv6_cidr_blocks = ["::/0"]
  #}

#}

#data "aws_ami" "ami_id" {
  most_recent = true
  owners      = ["137112412989"]

  filter {
    name   = "root-device-type"
    values = ["ebs"]
 # }
  filter {
    name   = "name"
    values = ["al2023-ami-2023.0.20230503.0-kernel-6.1-x86_64"]
#  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
 # }

#}

