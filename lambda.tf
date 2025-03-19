resource "aws_lambda_function" "my_lambda" {
  function_name    = "my-vpc-lambda"
  role            = data.aws_iam_role.lambda_role.arn
  handler        = "index.handler"
  runtime        = "python3.8"
  filename       = "lambda.zip"  # This file needs to be in the same directory
  timeout        = 10
  memory_size    = 128

  vpc_config {
    subnet_ids         = [aws_subnet.private_subnet.id]
    security_group_ids = [aws_security_group.lambda_sg.id]
  }

  tags = {
    Name = "vpc-lambda"
  }
}
