## Enabling NewRelic extension

In order to enable NewRelic extension, lambda should have a layer with extension,
and a policy `NewRelic-ViewLicenseKey-${aws_region}`.

Policy should be created using https://github.com/newrelic/newrelic-lambda-cli#installation.

## Usage

```hcl
resource aws_lambda_function me {
  ...
  handler = module.me_newrelic.handler
  ...
  layers = [module.me_newrelic.layer]
  ...
  environment {
    variables = merge(
      ...
      module.me_newrelic.environment,
    )
  }
}

module me_newrelic {
  source     = "Recall-Masters/newrelic/aws"
  lambda     = aws_lambda_function.me
  role_name  = module.me_role.name
  aws_region = var.aws_region 
  newrelic_account_id = ...
  handler    = "python.module.handler.func"
}
```
