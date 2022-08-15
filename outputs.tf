# Module      : Api Gateway
# Description : Terraform Api Gateway module outputs.
output "id" {
  value       = join("", aws_api_gateway_rest_api.default.*.id)
  description = "The ID of the REST API."
}

output "execution_arn" {
  value       = join("", aws_api_gateway_rest_api.default.*.execution_arn)
  description = "The Execution ARN of the REST API."
}

output "tags" {
  value       = module.labels.tags
  description = "A mapping of tags to assign to the resource."
}

output "dev_stage_name" {
  value =  aws_api_gateway_stage.default.0.stage_name
}

output "stg_stage_name" {
  value =  aws_api_gateway_stage.default.1.stage_name
}
