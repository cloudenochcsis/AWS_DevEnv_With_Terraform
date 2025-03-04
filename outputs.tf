output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID of the VPC"
}

output "public_subnet_id" {
  value       = aws_subnet.public.id
  description = "ID of the public subnet"
}

output "security_group_id" {
  value       = aws_security_group.main.id
  description = "ID of the security group"
}

output "instance_id" {
  value       = aws_instance.main.id
  description = "ID of the EC2 instance"
}

output "public_ip" {
  value       = aws_instance.main.public_ip
  description = "Public IP address of the EC2 instance"
}

output "ssh_command" {
  value       = "ssh -i ~/.ssh/id_rsa ec2-user@${aws_instance.main.public_ip}"
  description = "Command to SSH into the EC2 instance"
}

output "instance_state" {
  value       = aws_instance.main.instance_state
  description = "Current state of the EC2 instance"
}

output "ami_id" {
  value       = data.aws_ami.amazon_linux.id
  description = "ID of the AMI used for the EC2 instance"
}