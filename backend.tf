terraform {
  backend "s3" {
    bucket         = "remote-statefile-infra-terraform"
    key            = "teamcity-demo/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile = true
    encrypt = true
  }
}