terraform {
  backend "s3" {
    bucket = "tfstates.dellabeneta.online"
    key    = "raise.dellabeneta.online/terraform.tfstate"
    region = "us-east-1"
  }
}