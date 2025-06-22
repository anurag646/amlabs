provider "aws" {
      region     = "${var.region}"
}

resource "aws_iam_user" "user" {
  name = var.xname
}

resource "aws_iam_user_policy_attachment" "attach-user" {
  user       = "${aws_iam_user.user.name}"
  policy_arn = var.policy_arns
}