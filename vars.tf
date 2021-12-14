variable "newrelic_account_id" {
  description = "Newrelic account ID"
}

variable handler {
  description = "Lambda handler argument"
}

variable aws_region {
  description = "AWS region to construct the layer name"
}

variable lambda {
  description = "Lambda resource to check that layer is attached to it"
}

variable role_name {
  description = "Lambda role name to attach the managed policy to it"
  type = string
}
