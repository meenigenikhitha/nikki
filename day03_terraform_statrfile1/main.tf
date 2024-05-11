resource "aws_s3_bucket" "name" {
    bucket = "wedcftgbhujm"

  
}
resource "aws_s3_bucket_versioning" "name"{
    bucket = aws_s3_bucket.name.id
    versioning_configuration {
      status = "Enabled"
    }
}
  
