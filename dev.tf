
resource "aws_ssm_parameter" "foo" {
  name  = "foobar1"
  type  = "String"
  value = "bar"
}

resource "aws_ssm_parameter" "foo1" {
  name  = "foobar2"
  type  = "String"
  value = "bar"
}