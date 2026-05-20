# resource "aws_vpc" "vpc" {
#   cidr_block       = var.vpc_cidr_block
#   instance_tenancy = var.instance_tenancy

#   tags = {
#     Name = "india-vpc"
#   }
#   depends_on = [ aws_ebs_volume.ebs ]
# }

# resource "aws_ebs_volume" "ebs" {
#   availability_zone = var.ebs_availability_zone
#   size              = var.ebs_size

#   tags = {
#     Name = "HelloWorld"
#   }
# }

data "aws_vpc" "vpc" {
  id = var.vpc_id
}

resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.vpc.id
  cidr_block = var.cidr_block

  tags = {
    Name = "Main"
  }
}