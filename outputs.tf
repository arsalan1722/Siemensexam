output "subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "route_table_id" {
  value = aws_route_table.private_rt.id
}

output "security_group_id" {
  value = aws_security_group.lambda_sg.id
}

output "lambda_arn" {
  value = aws_lambda_function.my_lambda.arn
}
