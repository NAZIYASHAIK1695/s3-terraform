resource "aws_s3_bucket" "b" {
  bucket = "inclusio-demo-naziya-shaik"

  tags = {
    Name        = "inclusio-demo-naziya-shaik"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
