module "vpc" {

 source = "./modules/vpc"

 vpc_cidr = "10.0.0.0/16"

 public_subnets = ["10.0.1.0/24","10.0.2.0/24"]

 private_subnets = ["10.0.3.0/24","10.0.4.0/24"]

}

module "web" {

 source = "./modules/ec2"

 ami = var.ami

 instance_type = var.instance_type

 subnet_id = module.vpc.public_subnet_ids[0]

 name = "web-server"

}

module "app" {

 source = "./modules/ec2"

 ami = var.ami

 instance_type = var.instance_type

 subnet_id = module.vpc.private_subnet_ids[0]

 name = "app-server"

}

module "db" {

 source = "./modules/rds"

 db_user = var.db_user

 db_pass = var.db_pass

}