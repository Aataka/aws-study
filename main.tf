# S3バケットの定義
resource "aws_s3_bucket" "test_bucket" {
  bucket = "terraform-verified-bucket"
}

# パブリックアクセスブロックの設定（セキュリティ強化）
resource "aws_s3_bucket_public_access_block" "test_bucket_block" {
  bucket = aws_s3_bucket.test_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}