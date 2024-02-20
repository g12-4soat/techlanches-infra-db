provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "mssql-techlanches-instance" {
  identifier        = "mssql-techlanches-instance"
  allocated_storage = 20
  storage_type      = "gp2"
  engine            = "sqlserver-ex"
  engine_version    = "15.00.4043.16.v1"
  instance_class    = "db.t3.micro" # Eligible for AWS Free Tier
  username          = "admin"
  password          = "12345678"
  parameter_group_name = "default.sqlserver-ex-15.0"
  publicly_accessible  = true # Enable public accessibility

  tags = {
    Name        = "TechLanches MSSQL Database"
    Repository  = "https://github.com/g12-4soat/techlanches-infra-db"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }

}
