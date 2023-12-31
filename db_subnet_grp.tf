# # The DB subnet group defines which subnets and IP ranges 
# # the DB instance can use in the VPC that you selected.
# resource "aws_db_subnet_group" "db_subnet_group" {

#   name = "${var.resource_grp_name}-subnet-group"

#   # subnet_ids = data.aws_subnets.pvt_subnets.ids # use the IPs in the private subnet

#   subnet_ids = data.aws_subnets.pub_subnets.ids # use the IPs in the privatEe subnet

#   tags = {
#     Name = "${var.resource_grp_name}-subnet-group"
#   }
# }



# # Associate DB with private subnets when not publicly_accessible
# resource "aws_db_subnet_group" "db_subnet_group_pvt" {
#   # count = var.publicly_accessible ? 0 : 1

#   name = "${var.resource_grp_name}-subnet-group-pvt"

#   # subnet_ids = data.aws_subnets.pvt_subnets.ids # use the IPs in the private subnet

#   subnet_ids = data.aws_subnets.private_subnets.ids # use the IPs in the private subnet

#   tags = {
#     Name = "${var.resource_grp_name}-subnet-group"
#   }
# }

# # Associate DB with public subnets when publicly_accessible
# resource "aws_db_subnet_group" "db_subnet_group_pub" {
#   # count = var.publicly_accessible ? 1 : 0

#   name = "${var.resource_grp_name}-subnet-group-pub"

#   # subnet_ids = data.aws_subnets.pvt_subnets.ids # use the IPs in the private subnet

#   subnet_ids = data.aws_subnets.public_subnets.ids # use the IPs in the private subnet

#   tags = {
#     Name = "${var.resource_grp_name}-subnet-group"
#   }
# }

# locals{
#   # private_and_public_subnets = concat(data.aws_subnets.public_subnets.ids, data.aws_subnets.private_subnets.ids)
#   private_and_public_subnets = data.aws_subnets.private_subnets.ids
# }

# Associate DB with public subnets when publicly_accessible
resource "aws_db_subnet_group" "db_subnet_group_all" {
  # count = var.publicly_accessible ? 1 : 0

  name = "${var.resource_grp_name}-subnet-group-all"

  # subnet_ids = data.aws_subnets.pvt_subnets.ids # use the IPs in the private subnet

  subnet_ids = data.aws_subnets.private_subnets.ids # use the IPs in the private subnet

  tags = {
    Name = "${var.resource_grp_name}-subnet-group"
  }
}