resource "aws_db_subnet_group" "db_subnet_group" {

  name = "rds-subnet-group"

  subnet_ids = [
    aws_subnet.private1.id,
    aws_subnet.private2.id
  ]
}

resource "aws_db_instance" "mysql" {

  identifier = "mysql-rds"

  allocated_storage = 20

  engine         = "mysql"
  engine_version = "8.0"

  instance_class = "db.t3.micro"

  username = var.db_username
  password = var.db_password

  db_name = var.db_name

  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  publicly_accessible = false

  skip_final_snapshot = true

  deletion_protection = false
}