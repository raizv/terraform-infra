# Terraform Infra

This repository is for creating ElastiCache and RDS clusters in AWS.

## ElastiCache

Module to create ElastiCache clusters: [terraform-aws-elasticache](https://github.com/raizv/terraform-aws-elasticache)

Redis cluster [redis][redis]

## RDS

Module to create RDS clusters: [terraform-aws-rds](https://github.com/raizv/terraform-aws-rds)

Postgres cluster [postgres.tf][postgres.tf]

## Network Configuration

VPC and Network configuration [vpc.tf][vpc.tf]

Module to create Security Groups: [terraform-aws-security-group](https://github.com/raizv/terraform-aws-security-group)

Security groups [security_groups.tf][security_groups.tf]

[main.tf]: ./main.tf
[postgres.tf]: ./postgres.tf
[redis]: ./redis.tf
[security_groups.tf]: ./security_groups.tf
[vpc.tf]: ./vpc.tf