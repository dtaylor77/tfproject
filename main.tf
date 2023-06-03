
resource "aws_ssm_parameter" "foo" {
  name  = "foobar3"
  type  = "String"
  value = "bar"
}