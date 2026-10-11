variable "schema_registry_dek_lookup" {
  description = <<EOT
Map of schema_registry_dek_lookup, attributes below
Required:
    - kek_name
    - subject_name
Optional:
    - algorithm
    - rest_endpoint
    - version
    - credentials (block):
        - key (required)
        - secret (required)
    - schema_registry_cluster (block):
        - id (required)
EOT

  type = map(object({
    kek_name      = string
    subject_name  = string
    algorithm     = optional(string)
    rest_endpoint = optional(string)
    version       = optional(number)
    credentials = optional(object({
      key    = string
      secret = string
    }))
    schema_registry_cluster = optional(object({
      id = string
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

