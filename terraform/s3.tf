# Terraform state file bucket
resource "aws_s3_bucket" "si-web-server-state" {
  bucket = "si-web-server-state"
  acl    = "bucket-owner-full-control"

  versioning {
    enabled = true
  }

  tags {
    Name        = "si-web-server-state"
  }
}

# Terraform state file bucket policy
resource "aws_s3_bucket_policy" "si-web-server-state-policy" {
  bucket = aws_s3_bucket.si-web-server-state.id
  policy = data.template_file.si-web-server-state-policy.rendered
}

data "template_file" "s3-si-web-server-state-policy" {
  template = file(var.state_policy_path)

  vars {
    user_terraform_id = aws_iam_user.si-web-server-terraform.unique_id
    bucket_state_arn  = aws_s3_bucket.si-web-server-state.arn
  }
}
