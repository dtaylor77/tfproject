
resource "aws_ssm_parameter" "foo" {
  name  = "foo"
  type  = "String"
  value = "bar"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-test-tf-bucket-oidc12347"

  tags = {
    Name        = "My-oidc-bucket"
    Environment = "Dev"
  }
}