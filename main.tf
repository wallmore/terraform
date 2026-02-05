terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.31.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_user" "Admin-user" {
  name = "Einstein"
  tags = {
    description = "technical team lead"
  }
}
resource "aws_iam_policy" "admin-user" {
  name   = "adminuser"
  policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "1234567890",
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}
resource "aws_iam_user_policy_attachment" "Einstein-adminuser-access" {
  user = aws_iam_user.Admin-user.name
  policy_arn = aws_iam_policy.admin-user.arn
}
resource "aws_iam_policy" "ec2_access" {
  name   = "ec2_access"
  policy = file("ec2-policy.json")
}
resource "aws_iam_user_policy_attachment" "Einstein-ec2-access" {
  user = aws_iam_user.Admin-user.name
  policy_arn = aws_iam_policy.ec2_access.arn
}
