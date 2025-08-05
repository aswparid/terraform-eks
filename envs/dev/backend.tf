terraform {
  backend "s3" {
    bucket         = "eks-terraform-states"
    key            = "dev/eks.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
