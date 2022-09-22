resource "aws_s3_bucket" "b" {
  bucket = "name"

  tags = {
    Name        = "name"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
