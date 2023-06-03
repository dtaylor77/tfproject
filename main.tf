
resource "aws_ssm_parameter" "foo" {
  name  = "foobar4"
  type  = "String"
  value = "bar"
}