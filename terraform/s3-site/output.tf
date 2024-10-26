# Show me bucket url
output "bucket_url" {
  value = "http://${aws_s3_bucket_website_configuration.code9-bucket-vlada-code9-clever-foxhound.website_endpoint}"
}

output "aws_region" {
  value = data.aws_region.current
  
}