resource "aws_db_instance" "db" {

 allocated_storage = 20

 engine = "mysql"

 instance_class = "db.t3.micro"

 db_name = "appdb"

 username = var.db_user

 password = var.db_pass

 skip_final_snapshot = true

}