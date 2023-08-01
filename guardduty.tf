provider "aws" {
  region  = us-east-1
}

resource "aws_guardduty_detector" "GD-Detector" {
  enable = true
}
