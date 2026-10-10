output "organization_members_id" {
  description = "Map of id values across all organization_members, keyed the same as var.organization_members except keys with no id are omitted"
  value       = { for k, v in auth0_organization_member.organization_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_members_organization_id" {
  description = "Map of organization_id values across all organization_members, keyed the same as var.organization_members except keys with no organization_id are omitted"
  value       = { for k, v in auth0_organization_member.organization_members : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "organization_members_user_id" {
  description = "Map of user_id values across all organization_members, keyed the same as var.organization_members except keys with no user_id are omitted"
  value       = { for k, v in auth0_organization_member.organization_members : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

