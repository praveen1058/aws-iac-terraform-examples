variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "dev-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public Subnet CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "AZ for subnet"
  type        = string
  default     = "ap-south-1a"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

