# Outputs for Resource Names

output "resource_group_name" {
  value = local.resource_group_name
}

output "storage_account_name" {
  value = local.storage_account_name
}

output "cdn_profile_name" {
  value = local.cdn_profile_name
}

output "cdn_endpoint_name" {
  value = local.cdn_endpoint_name
}

output "key_vault_name" {
  value = local.key_vault_name
}

# Storage Account related outputs

output "storage_account" {
  value     = module.storage_account.storage_account
  sensitive = true
}

output "storage_shares" {
  value = module.storage_account.storage_shares
}

output "storage_containers" {
  value = module.storage_account.storage_containers
}

output "storage_queues" {
  value = module.storage_account.storage_queues
}


# Key vault related outputs

output "key_vault_id" {
  value = module.key_vault.key_vault_id
}

output "key_vault_uri" {
  value = module.key_vault.vault_uri
}

output "key_vault_access_policies" {
  value     = module.key_vault.access_policies_object_ids
  sensitive = true
}

output "certificate_ids" {
  value = module.key_vault.certificate_ids
}

output "secret_ids" {
  value = module.key_vault.secret_ids
}

output "key_ids" {
  value = module.key_vault.key_ids
}

# CDN related outputs

output "cdn_profile_id" {
  description = "The ID of the CDN Profile"
  value       = module.azure_cdn.cdn_profile_id
}

output "cdn_endpoint_id" {
  description = "The ID of the CDN Endpoint"
  value       = module.azure_cdn.cdn_endpoint_id
}

output "dns_cname_fqdn" {
  description = "The FQDN for custom domain"
  value       = module.azure_cdn.dns_cname_fqdn
}