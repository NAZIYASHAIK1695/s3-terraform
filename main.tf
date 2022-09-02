provider "aws" {
  region = "us-east-2"
  access_key = "AK"
  secret_key = "SR"
}
module "s3" {
    source = ""
    #bucket name should be unique
    bucket_name = "inclusio-demo-naziya.shaik"       
}
