
resource "aws_ssm_parameter" "foo" {
  name  = "foobar2"
  type  = "String"
  value = "bar"
}