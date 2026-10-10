resource "auth0_organization_member" "organization_members" {
  for_each = var.organization_members

  organization_id = each.value.organization_id
  user_id         = each.value.user_id
}

