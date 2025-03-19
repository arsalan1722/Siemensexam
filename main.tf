resource "aws_subnet" "private_subnet" {
  vpc_id            = "vpc-06b326e20d7db55f9"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
}

resource "aws_route_table" "private_rt" {
  vpc_id = "vpc-06b326e20d7db55f9"
}

resource "aws_security_group" "lambda_sg" {
  vpc_id = "vpc-06b326e20d7db55f9"
}

resource "aws_lambda_function" "api_lambda" {
  function_name = "invoke-api-lambda"
  role          = "arn:aws:iam::DevOps-Candidate-Lambda-Role/LambdaRole"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.11"
  filename      = "lambda.zip"
  vpc_config {
    subnet_ids         = [aws_subnet.private_subnet.id]
    security_group_ids = [aws_security_group.lambda_sg.id]
  }
}
