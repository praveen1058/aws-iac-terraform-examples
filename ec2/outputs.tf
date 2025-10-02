output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "security_group_id" {
  description = "Security group ID attached to the EC2 instance"
  value       = aws_security_group.ec2_sg.id
}
