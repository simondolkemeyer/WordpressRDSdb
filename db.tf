resource "aws_db_instance" "db_wordpress" {
  allocated_storage    = 10
  db_name              = "wordpress_db"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "adminpassword"
  skip_final_snapshot  = true
}

# resource "aws_db_subnet_group" "default" {
#  name       = "main"
#  subnet_ids = [aws_subnet.private_subnet_1.id]
#
#  tags = {
#    Name = "My DB subnet group"
#  }
# }