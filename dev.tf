
resource "aws_ssm_parameter" "foo" {
  name  = "foobar"
  type  = "String"
  value = "bar"
}