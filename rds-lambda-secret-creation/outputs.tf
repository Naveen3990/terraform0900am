output "rds_endpoint" {

  value = aws_db_instance.mysql.address
}

output "secret_name" {

  value = aws_secretsmanager_secret.db_secret.name
}

output "lambda_name" {

  value = aws_lambda_function.lambda.function_name
}