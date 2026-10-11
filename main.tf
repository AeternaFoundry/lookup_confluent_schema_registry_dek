data "confluent_schema_registry_dek" "schema_registry_dek_lookup" {
  for_each = var.schema_registry_dek_lookup

  kek_name      = each.value.kek_name
  subject_name  = each.value.subject_name
  algorithm     = each.value.algorithm
  rest_endpoint = each.value.rest_endpoint
  version       = each.value.version

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "schema_registry_cluster" {
    for_each = each.value.schema_registry_cluster != null ? [each.value.schema_registry_cluster] : []
    content {
      id = schema_registry_cluster.value.id
    }
  }
}

