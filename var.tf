# Defining CIDR Block for VPC
variable "vpc_cidr" {
 default = "10.0.0.0/16"
}
# Defining CIDR Block for public Subnet
variable "subnet1_cidr" {
 default = "10.0.1.0/24"
}
