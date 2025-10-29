resource "aws_s3_bucket" "example" {
  bucket = "my-iac-pipeline-demo-bucket"
  acl    = "private"

  tags = {
    Name        = "DemoBucket"
    Environment = var.environment
  }
}
