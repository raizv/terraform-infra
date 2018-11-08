module "terraform_aws_elasticache" {
  source             = "github.com/raizv/terraform-aws-elasticache"
  cluster_id         = "goleague"
  availability_zone  = "${var.region}a"
  security_group_ids = "${module.security_group_redis.security_group_id}"
  subnet_group_name  = "${aws_elasticache_subnet_group.default.name}"
}
