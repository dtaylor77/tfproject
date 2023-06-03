
resource "aws_ssm_parameter" "foo" {
  name  = "foobar1"
  type  = "String"
  value = "bar"
}

