terraform {
  backend "s3" {
    bucket       = "my-enterprise-tfstate-905690002858"
    key          = "dev/network/terraform.tfstate"
    region       = "eu-west-1"
    encrypt      = true
    use_lockfile = true # Native S3 locking (Terraform 1.10+)
    profile = "enterprise-prod" # to take the credentials from awscli profile
  }
}