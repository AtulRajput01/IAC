# AWS Secrets Manager resource
resource "aws_secretsmanager_secret" "application_secret" {
  name = var.secret_name
  description = "Secret for ${var.secret_name}"
}

resource "aws_secretsmanager_secret_version" "secret_value" {
  secret_id     = aws_secretsmanager_secret.application_secret.id
  secret_string = file(var.secret_json_file)
}

# Outputs
output "secret_arn" {
  description = "ARN of the created secret"
  value       = aws_secretsmanager_secret.application_secret.arn
}

output "secret_name" {
  description = "Name of the created secret"
  value       = aws_secretsmanager_secret.application_secret.name
}

# Example usage removed since values will be provided via variables
