resource "aws_security_group" "teamcity_sg" {

  tags = {
    Name = "morning-9_35_AM.change"
  }

  name        = var.sg_name
  description = "Created from TeamCity pipeline"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


}