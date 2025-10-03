provider "aws" {
  region = var.aws_region
}

# Security Group Example
resource "aws_security_group" "web_sg" {
  name        = var.sg_name
  description = "Security group for web servers"
  vpc_id      = var.vpc_id

  # Allow SSH from your IP
  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip] # safer than 0.0.0.0/0
  }

  # Allow HTTP from anywhere
  ingress {
    description = "HTTP Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTPS from anywhere
  ingress {
    description = "HTTPS Access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound traffic allowed
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = var.sg_name
    Environment = var.environment
  }
}
