variable "bucket_name"{}

resource "aws_s3_bucket" "super-s3-bucket" {
  bucket = "${var.bucket_name}"
  acl    = "private"

  tags = {
    Name = "The worlds greatest s3 bucket"
  }
}