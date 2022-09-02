# creating  Public subnet
resource "aws_subnet" "public-subnet" {
  vpc_id = "${aws_vpc.myvpc.id}"
  cidr_block = "${var.subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
  tags = {
    Name = "Public Subnet"
}
}
