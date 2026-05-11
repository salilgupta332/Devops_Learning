resource "aws_s3_bucket" "priyasalesagency-moosanagar" {
  bucket = "priyasalesagency-moosanagar-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}
