terraform {
  backend "s3" {
    region = "eu-west-1"
    key    = "terraform.state"
  }
}
