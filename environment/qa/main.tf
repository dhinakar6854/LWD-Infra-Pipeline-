/*
module "vpc" {
    source = "../../modules/vpc"
    cidr_block = "11.10.0.0/16"
    subnet_cidr = "11.10.1.0/24"
    az = "${var.aws_region}a"
    env = "qa"
}

module "ec2" {
    source = "../../modules/ec2"
    ami_id = "ami-08c46876c64a927b8"
    instance_type = "t3.micro"
    subnet_id = module.vpc.subnet_id 
    instance_count = 3
    env = "qa"  
}
*/