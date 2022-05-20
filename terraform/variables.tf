variable "aws_region" {
  default = "eu-west-1"
}

variable "iam_policy_path" {
    default = "etc/iam/si-web-server-terraform.json"
}

variable "state_policy_path" {
    default = "etc/s3/state-policy.tpl"
}
