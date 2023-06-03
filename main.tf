
resource "aws_ssm_parameter" "foo" {
  name  = "foobar2"
  type  = "String"
  value = "bar"
}

resource "aws_vpc" "test-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-vpc"
  }
}