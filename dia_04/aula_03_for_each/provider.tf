terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-turma-2024"
    key    = "aula_conditional"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias  = "west"
  region = "us-west-2"
}