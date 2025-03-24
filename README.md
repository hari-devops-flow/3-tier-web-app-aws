# 3-Tier Web App on AWS

This repository hosts the Terraform manifest files for deploying infrastructure to host a 3-tier web app.


### Directroy Structure:

```
terraform-aws-3tier/
├── .github/
│   └── workflows/
│       ├── terraform-plan.yml
│       └── terraform-apply.yml
├── modules/
│   ├── networking/
│   │   ├── main.tf          # VPC, subnets, security groups
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── README.md
│   ├── database/
│   │   ├── main.tf          # RDS or other database resources
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── README.md
│   ├── application/
│   │   ├── main.tf          # EC2, ECS, or Lambda for application layer
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   └── README.md
│   └── frontend/
│       ├── main.tf          # S3, CloudFront for frontend
│       ├── variables.tf
│       ├── outputs.tf
│       └── README.md
├── environments/
│   ├── dev/
│   │   ├── main.tf          # Calls modules with dev-specific values
│   │   ├── variables.tf
│   │   ├── terraform.tfvars # Dev environment variables
│   │   └── outputs.tf
│   ├── qa/
│   │   ├── main.tf          # Calls modules with qa-specific values
│   │   ├── variables.tf
│   │   ├── terraform.tfvars # QA environment variables
│   │   └── outputs.tf
│   ├── staging/
│   │   ├── main.tf          # Calls modules with staging-specific values
│   │   ├── variables.tf
│   │   ├── terraform.tfvars # Staging environment variables
│   │   └── outputs.tf
│   └── prod/
│       ├── main.tf          # Calls modules with prod-specific values
│       ├── variables.tf
│       ├── terraform.tfvars # Production environment variables
│       └── outputs.tf
├── .gitignore
├── README.md
└── LICENSE
```
