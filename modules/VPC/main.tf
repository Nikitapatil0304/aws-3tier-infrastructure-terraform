resource "aws_vpc" "main" {

 cidr_block = var.vpc_cidr

 tags = {
  Name = "project-vpc"
 }

}

resource "aws_subnet" "public" {

 count = 2

 vpc_id = aws_vpc.main.id

 cidr_block = element(var.public_subnets, count.index)

 map_public_ip_on_launch = true

}

resource "aws_subnet" "private" {

 count = 2

 vpc_id = aws_vpc.main.id

 cidr_block = element(var.private_subnets, count.index)

}