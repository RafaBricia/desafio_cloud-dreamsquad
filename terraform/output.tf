output "backend_alb_dns" {
  value = aws_lb.alb.dns_name
}

output "ecr_repo_url" {
  value = aws_ecr_repository.backend_repo.repository_url
}

output "files_bucket" {
  value = aws_s3_bucket.files.bucket
}

output "lambda_name" {
  value = aws_lambda_function.daily_upload.function_name
}

output "frontend_bucket" {
  value = aws_s3_bucket_website_configuration.frontend.website_endpoint
}
