resource "aws_s3_bucket" "example" {
  bucket = "my-iac-pipeline-demo-bucket"

  tags = {
    Name        = "DemoBucket"
    Environment = var.environment
    Version     = "v1.0.0"
  }
}

resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}
