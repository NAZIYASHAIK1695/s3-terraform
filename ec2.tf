# creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami = "ami-0fa49cc9dc8d62c84"
  instance_type = "t2.micro"
  key_name = "tests"
  vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
  subnet_id = "${aws_subnet.public-subnet.id}"
  associate_public_ip_address = true
  user_data = "${file("data.sh")}"
  tags = {
   Name = "My Public Instance"
}
}

