data "aws_vpc" "openshift" {
  filter {
    name   = "tag:Name"
    values = ["${var.name_tag_prefix} VPC"]
  }
}

resource "aws_subnet" "elasticache" {
  vpc_id            = "${data.aws_vpc.openshift.id}"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "${var.region}a"

  tags {
    Name    = "Elasticache"
    Project = "Goleague"
  }
}

resource "aws_subnet" "rds1" {
  vpc_id            = "${data.aws_vpc.openshift.id}"
  cidr_block        = "10.0.3.0/24"
  availability_zone = "${var.region}a"

  tags {
    Name    = "RDS"
    Project = "Goleague"
  }
}

resource "aws_subnet" "rds2" {
  vpc_id            = "${data.aws_vpc.openshift.id}"
  cidr_block        = "10.0.4.0/24"
  availability_zone = "${var.region}b"

  tags {
    Name    = "RDS"
    Project = "Goleague"
  }
}

resource "aws_elasticache_subnet_group" "default" {
  name       = "elasticache"
  subnet_ids = ["${aws_subnet.elasticache.id}"]
}

resource "aws_db_subnet_group" "default" {
  name       = "rds"
  subnet_ids = ["${aws_subnet.rds1.id}", "${aws_subnet.rds2.id}"]
}

# resource "aws_route_table" "default" {
#   vpc_id = "${data.aws_vpc.openshift.id}"
#   route {
#     cidr_block = "${var.openshift_cidr}"
#     gateway_id = "${aws_internet_gateway.openshift.id}"
#   }
#   tags {
#     Name = "RDS"
#     Project = "Goleague"
#   }
# }


# resource "aws_route_table_association" "default" {
#   subnet_id = "${aws_subnet.elasticache.id}"
#   route_table_id = "${aws_route_table.default.id}"
# }

