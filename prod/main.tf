module "sg_creation" {
  source = "../modules/security-group"
  vpc_id = data.aws_vpc.default.id
  sg_name     = "teamcity-demo-sg"
  sg_tag_name = "afternoon-2PM-change"
}