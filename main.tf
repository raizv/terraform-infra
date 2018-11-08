# Set VAULT_TOKEN environment variable
provider "vault" {
  address = "${var.vault_addr}"
}

# AWS credentials from Vault. Must set up AWS backend in Vault on path aws with role deploy
data "vault_aws_access_credentials" "aws_creds" {
  backend = "aws-tf"
  role    = "deploy"
}

#  Setup the core provider information.
provider "aws" {
  access_key = "${data.vault_aws_access_credentials.aws_creds.access_key}"
  secret_key = "${data.vault_aws_access_credentials.aws_creds.secret_key}"
  region     = "${var.region}"
}
