resource "aws_s3_bucket" "terraform-state" {
  bucket = "doxa-terraform-state-${random_string.random.result}"

  tags = {
    Name = "TerraformState "
  }
}
resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
}
