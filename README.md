# AWS IaC Terraform Examples

A collection of **Infrastructure-as-Code (IaC)** examples using **Terraform** for AWS.  
This repo demonstrates real-world cloud infrastructure deployment patterns and best practices.

---

## 🔹 Overview

This repo contains Terraform scripts to provision and manage AWS resources, including:

- VPC, Subnets, and Internet Gateway  
- Security Groups and IAM Roles/Policies  
- EC2 Instances (Dev, Test, Prod environments)  
- S3 Buckets and S3 Lifecycle Policies  
- RDS / CloudSQL Instances  
- Load Balancers and Auto Scaling Groups  
- CloudWatch Alarms and SNS Notifications  

> Each module is designed to be **modular, reusable, and environment-friendly**.

---
## 📁 Repository Structure

aws-iac-terraform-examples/
├── vpc/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── ec2/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── s3/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
├── rds/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
└── README.md



> **Note:** Each folder contains an example Terraform configuration for a specific AWS service.

---

## ⚡ How to Use

1. **Clone the repo**
```bash
git clone https://github.com/praveen1058/aws-iac-terraform-examples.git
cd aws-iac-terraform-examples

**Initialize Terraform**

terraform init

Best Practices

Use variables.tf to configure environments.

Use remote state (S3 + DynamoDB) for production environments.

Keep secrets out of code; use AWS Secrets Manager or environment variables.

Modularize resources to reuse code across multiple environments.

References

Terraform AWS Provider Documentation






