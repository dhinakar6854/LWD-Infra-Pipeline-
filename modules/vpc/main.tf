resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az

  tags = {
    Name = "${var.env}-subnet"
  }
}

output "subnet_id" {
  value = aws_subnet.public_subnet.id
  description = "The ID of the created subnet."
}

