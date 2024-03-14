resource "aws_db_instance" "mssql-techlanches-instance" {
  identifier           = "mssql-techlanches-instance"
  engine               = "sqlserver-ex"
  parameter_group_name = "default.sqlserver-ex-15.0"
  engine_version       = "15.00.4043.16.v1"
  instance_class       = "db.t3.medium" # Eligible for AWS Free Tier
  storage_type         = "gp2"
  allocated_storage    = 20
  username             = var.db-username
  password             = random_password.master_password.result
  publicly_accessible  = true # Enable public accessibility

  tags = {
    Name        = "TechLanches MSSQL Server Database"
    Repository  = "https://github.com/g12-4soat/techlanches-infra-db"
    Environment = "Prod"
    ManagedBy   = "Terraform"
  }

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }

}

output "security_group_id" {
  value = tolist(aws_db_instance.mssql-techlanches-instance.vpc_security_group_ids)[0]
}