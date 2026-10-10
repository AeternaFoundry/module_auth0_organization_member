variable "organization_members" {
  description = <<EOT
Map of organization_members, attributes below
Required:
    - organization_id
    - user_id
EOT

  type = map(object({
    organization_id = string
    user_id         = string
  }))
}

