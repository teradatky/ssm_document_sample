resource "aws_security_group" "ec2" {
  name        = join("-", [var.name, "sg"])
  description = "default sg for provisoned ec2"
  vpc_id      = var.vpc_id

  ingress {
    description = "allow all protocol"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.sg_allowed_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
