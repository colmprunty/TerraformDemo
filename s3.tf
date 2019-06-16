resource "aws_s3_bucket" "b" {
  bucket = "colm-terraform-test"
  acl    = "private"

  tags = {
    Name        = "The worlds greatest s3 bucket"
  }
}
