variable "directory_service_shared_directories" {
  description = <<EOT
Map of directory_service_shared_directories, attributes below
Required:
    - directory_id
    - target (block):
        - id (required)
        - type (optional)
Optional:
    - method
    - notes
    - region
EOT

  type = map(object({
    directory_id = string
    method       = optional(string)
    notes        = optional(string)
    region       = optional(string)
    target = object({
      id   = string
      type = optional(string)
    })
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

