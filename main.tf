resource "aws_iam_policy_document" "require_mfa_policy" {
  statement {
    actions   = ["iam:CreateVirtualMFADevice", "iam:EnableMFADevice"]
    resources = ["*"]
    effect    = "Allow"

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }
  }
}

resource "aws_iam_policy" "require_mfa" {
  name        = "EnforceMFAPolicy"
  description = "Policy to enforce MFA for IAM users"
  policy      = aws_iam_policy_document.require_mfa_policy.json
}

data "aws_iam_users" "all_users" {}

resource "aws_iam_user_policy_attachment" "attach_mfa_policy" {
  for_each   = data.aws_iam_users.all_users.ids
  user       = each.key
  policy_arn = aws_iam_policy.require_mfa.arn
}
