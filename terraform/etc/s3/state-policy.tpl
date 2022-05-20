{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:DeleteObjectVersion",
                "s3:DeleteObject",
                "s3:Get*",
                "s3:List*",
                "s3:PutObject",
                "s3:PutObjectAcl",
                "s3:PutObjectVersionAcl",
                "s3:RestoreObject"
            ],
            "Resource": [
                "${bucket_state_arn}",
                "${bucket_state_arn}/*"
            ],
            "Condition": {
                "ForAnyValue:StringLike": {
                    "aws:userId": [
                        "${user_terraform_id}"
                    ]
                }
            }
        },
        {
            "Effect": "Deny",
            "Principal": "*",
            "Action": "*",
            "Resource": [
                "${bucket_state_arn}",
                "${bucket_state_arn}/*"
            ],
            "Condition": {
                "StringNotLike": {
                    "aws:userId": [
                        "${user_terraform_id}"
                    ]
                }
            }
        }
    ]
}
