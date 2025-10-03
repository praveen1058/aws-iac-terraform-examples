variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "sg_name" {
  description = "Security Group Name"
  type        = string
  default     = "web-sg"
}

variable "vpc_id" {
  description = "The VPC ID where SG will be created"
  type        = string
}

variable "my_ip" {
  description = "Your IP for SSH access"
  type        = string
  default     = "0.0.0.0/0" # CHANGE THIS! safer to put your IP
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}
