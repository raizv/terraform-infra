module "security_group_redis" {
  source              = "github.com/raizv/terraform-aws-security-group//redis"
  security_group_name = "redis"
  vpc_id              = "${data.aws_vpc.openshift.id}"
  source_cidr_block   = "${var.openshift_cidr}"
}

module "security_group_rds" {
  source              = "github.com/raizv/terraform-aws-security-group//rds"
  security_group_name = "rds"
  vpc_id              = "${data.aws_vpc.openshift.id}"
  source_cidr_block   = "${var.openshift_cidr}"
}
