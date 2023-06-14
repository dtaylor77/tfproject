
resource "aws_ssm_parameter" "foo" {
  name  = "foobar3"
  type  = "String"
  value = "bar"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.1.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main-vpc"
  }
}

output "filename" {
  value = "${path.module}"
}