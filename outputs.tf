locals {
  layer_name = "arn:aws:lambda:us-west-2:451483290750:layer:NewRelicPython38:48"
  handler = "newrelic_lambda_wrapper.handler"
  environment = {
    NEW_RELIC_LAMBDA_HANDLER = var.handler,
    NEW_RELIC_ACCOUNT_ID = var.newrelic_account_id,
  }
}

output layer {
  value = local.layer_name
}

output handler {
  value = local.handler
}

output environment {
  value = local.environment
}
