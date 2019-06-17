resource "aws_s3_bucket" "super-s3-bucket" {
  bucket = "colm-terraform-test"
  acl    = "private"

  tags = {
    Name = "The worlds greatest s3 bucket"
  }
}