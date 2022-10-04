resource "aws_instance" "vprofile-bastion" {
  ami = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name = aws_key_pair.vprofilekey.key_name
  subnet_id = module.vpc.public_subnets[0]
  count = var.instance_count
  vpc_security_group_ids = [aws.security_group.vprofile-bastion-sg.id]

  tags = {
    Name = "vprofile-bastion"
    PROJECT = "vprofile"
  }
}

