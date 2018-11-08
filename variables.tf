# variable "vault_user" {
#   description = "Vault userid: determines location of secrets and affects path of k8s auth backend"
# }
variable "vault_addr" {
  description = "Address of Vault server including port"
  default     = "http://127.0.0.1:8200"
}

variable "name_tag_prefix" {
  description = "prefixed to Name tag added to EC2 instances and other AWS resources"
  default     = "OpenShift"
}

variable "openshift_cidr" {
  default = "172.31.0.0/16"
}

variable "region" {
  default = "us-east-1"
}

# variable "vpc_cidr" {
#   default = "172.16.0.0/22"
# }


# variable "vpc_peering_id" {
#   default = "pcx-4a16f023"
# }

