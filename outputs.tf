output "schema_registry_dek_lookup_id" {
  description = "Map of id values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schema_registry_dek_lookup_algorithm" {
  description = "Map of algorithm values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no algorithm are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.algorithm if v.algorithm != null && length(v.algorithm) > 0 }
}
output "schema_registry_dek_lookup_credentials" {
  description = "Map of credentials values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no credentials are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "schema_registry_dek_lookup_encrypted_key_material" {
  description = "Map of encrypted_key_material values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no encrypted_key_material are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.encrypted_key_material if v.encrypted_key_material != null && length(v.encrypted_key_material) > 0 }
}
output "schema_registry_dek_lookup_hard_delete" {
  description = "Map of hard_delete values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no hard_delete are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.hard_delete if v.hard_delete != null }
}
output "schema_registry_dek_lookup_kek_name" {
  description = "Map of kek_name values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no kek_name are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.kek_name if v.kek_name != null && length(v.kek_name) > 0 }
}
output "schema_registry_dek_lookup_key_material" {
  description = "Map of key_material values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no key_material are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.key_material if v.key_material != null && length(v.key_material) > 0 }
}
output "schema_registry_dek_lookup_rest_endpoint" {
  description = "Map of rest_endpoint values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no rest_endpoint are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "schema_registry_dek_lookup_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}
output "schema_registry_dek_lookup_subject_name" {
  description = "Map of subject_name values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no subject_name are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.subject_name if v.subject_name != null && length(v.subject_name) > 0 }
}
output "schema_registry_dek_lookup_version" {
  description = "Map of version values across all schema_registry_dek_lookup, keyed the same as var.schema_registry_dek_lookup except keys with no version are omitted"
  value       = { for k, v in data.confluent_schema_registry_dek.schema_registry_dek_lookup : k => v.version if v.version != null }
}

