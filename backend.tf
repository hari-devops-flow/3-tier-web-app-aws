terraform {
    backend "s3" {
        bucket = "hari-terraform-remote-state"
        key = "3-tier-aws-terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-state-lock"
        profile = "100daysofdevops"
        encrypt = true
    }
}