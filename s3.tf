resource "aws_s3_bucket" "inclusio-demo-naziya.shaik" {
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"   
}
