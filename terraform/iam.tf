# Terraform user
resource "aws_iam_user" "si-web-server-terraform" {
  name = "si-web-server-terraform"
}

resource "aws_iam_user_policy" "si-web-server-terraform" {
  name   = "si-web-server-terraform"
  user   = aws_iam_user.si-web-server-terraform.name
  policy = file(var.iam_policy_path)
}
