#terraform {
 # required_providers {
  ##   source = "hashicorp/aws"
    #  version = "5.1.0"
    #}
  #}
#}

provider "aws" {
  version = "5.1.0"
  region  = "ca-central-1"
}

terraform {
  backend "s3" {
    
  }
}
