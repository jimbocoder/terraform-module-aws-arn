
locals {
  parsed_base_arn = regex("^arn:(?P<partition>[^:]*):(?P<service>[^:]*):(?P<region>[^:]*):(?P<account_id>[^:]*):(?P<resource>[^:]*)$", var.base_arn)
  partition       = trimspace(coalesce(var.partition, local.parsed_base_arn["partition"], " "))
  service         = trimspace(coalesce(var.service, local.parsed_base_arn["service"], " "))
  region          = trimspace(coalesce(var.region, local.parsed_base_arn["region"], " "))
  account_id      = trimspace(coalesce(var.account_id, local.parsed_base_arn["account_id"], " "))
  resource        = trimspace(coalesce(var.resource, local.parsed_base_arn["resource"], " "))
  resource_parts  = split("/", local.resource)
}

