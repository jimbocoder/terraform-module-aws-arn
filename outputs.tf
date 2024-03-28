output "arn" {
  value = format(
    "arn:%s:%s:%s:%s:%s",
    local.partition,
    local.service,
    local.region,
    local.account_id,
    local.resource
  )
}

output "partition" {
  value = local.partition
}

output "service" {
  value = local.service
}

output "region" {
  value = local.region
}

output "account_id" {
  value = local.account_id
}

output "resource" {
  value = local.resource
}

output "resource_parts" {
  value = local.resource_parts
}

