output "state_file_bucket_name" {
  value = aws_s3_bucket.aceshigh.id
}
output "aws_region" {
  value = data.aws_region.current
  
}