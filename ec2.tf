resource "aws_instance" "ec2_instance_1" {
  ami           = "ami-0df24e148fdb9f1d8"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_web.id]
  key_name = "nfdemo"
  associate_public_ip_address = true
  user_data = "${file("install_wp.sh")}"

  tags = {
    Name = "EC2 Wordpress"
  }
}