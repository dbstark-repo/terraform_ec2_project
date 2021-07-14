provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "ec2-key"
  public_key = file("${path.module}/ec2-key.pub")
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0dc2d3e4c0f9ebd18"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.ssh_key.key_name
  subnet_id              = aws_subnet.ec2_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  user_data              = file("${path.module}/install_httpd.sh")

  tags = {
    Name = "ec2-instance"
  }
}