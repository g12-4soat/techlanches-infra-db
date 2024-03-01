resource "aws_secretsmanager_secret" "rds_credentials" {
  name = var.secrets-name
}

resource "aws_secretsmanager_secret_version" "rds_credentials" {
  secret_id     = aws_secretsmanager_secret.rds_credentials.id
  secret_string = jsonencode({
    username: aws_db_instance.mssql-techlanches-instance.username,
    password: random_password.master_password.result,
    host: aws_db_instance.mssql-techlanches-instance.endpoint,
    port: aws_db_instance.mssql-techlanches-instance.port
    engine: "mysql",
  })
}
