output "default_vpc_id" {
  value = data.aws_vpc.default.id
}

output "security_group_id" {
  value = module.sg_creation.security_group_id
}