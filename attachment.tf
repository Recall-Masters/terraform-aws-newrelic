data "aws_iam_policy" "newrelic_license_key_policy" {
  arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:policy/NewRelic-ViewLicenseKey-${var.aws_region}"
}


resource aws_iam_role_policy_attachment this {
  policy_arn = data.aws_iam_policy.newrelic_license_key_policy.arn
  role       = var.role_name
}
