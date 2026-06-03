output "sg_id" {
  value = aws_security_group.teamcity_sg.id
}

output "default_vpc_id" {
  value = data.aws_vpc.default.id
}