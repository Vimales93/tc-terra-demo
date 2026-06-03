data "aws_vpc" "default" {
  default = true
}

resource "aws_s3_bucket" "demo" {
  bucket = "infra-terra-bucket-12453"
}

resource "aws_s3_object" "test_file" {
  bucket = "vimal-demo-bucket-12345"
  key    = "test-file.txt"
  content = "Terraform via TeamCity pipeline"
}