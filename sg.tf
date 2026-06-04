resource "aws_security_group" "teamcity_sg" {

  tags = {
    Name = "morning-8.45.change"
  }

  name        = "teamcity-demo-sg"
  description = "Created from TeamCity pipeline"
  vpc_id      = data.aws_vpc.default.id

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