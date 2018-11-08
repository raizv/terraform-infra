module "terraform_aws_rds_postgres" {
  source                 = "github.com/raizv/terraform-aws-rds"
  vpc_security_group_ids = "${module.security_group_rds.security_group_id}"
  db_subnet_group_name   = "${aws_db_subnet_group.default.name}"

  engine   = "postgres"
  name     = "goleague"
  username = "goleague"
  password = "goleague"
}
