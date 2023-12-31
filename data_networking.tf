# This file probably doesn't need to be customised for each ECS service.
# They refer to the common resources that are shared for all services.
# TODO: try to share this file among deployments

data "aws_vpcs" "vpc" {
  tags = {
    Name = "${var.proj_name}-*"
  }
}

data "aws_subnets" "private_subnets" {

  filter {
    name   = "vpc-id"
    values = data.aws_vpcs.vpc.ids
  }

  filter {
    name   = "map-public-ip-on-launch"
    values = [false]
  }

}

data "aws_subnets" "public_subnets" {

  filter {
    name   = "vpc-id"
    values = data.aws_vpcs.vpc.ids
  }

  filter {
    name   = "map-public-ip-on-launch"
    values = [true]
  }

}

locals {
  vpc_id_found = element(data.aws_vpcs.vpc.ids, 0) # this has been filtered such that there is only one entry found. so take the single entry in the list.
}

