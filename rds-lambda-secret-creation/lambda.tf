resource "aws_lambda_function" "lambda" {

  function_name = "rds-lambda"

  filename = "${path.module}/lambda.zip"

  source_code_hash = filebase64sha256("${path.module}/lambda.zip")

  role    = aws_iam_role.lambda_role.arn
  handler = "lambda.lambda_handler"
  runtime = "python3.12"

  timeout = 60

  vpc_config {
    subnet_ids = [
      aws_subnet.private1.id,
      aws_subnet.private2.id
    ]

    security_group_ids = [
      aws_security_group.lambda_sg.id
    ]
  }
}