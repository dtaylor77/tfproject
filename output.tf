output "securitygroupid" {
  value = aws_security_group.allow_ports.id
}

output "instance_id" {
  value = aws_instance.webserver.id
}