variable "postgresql_flexible_server_firewall_rules" {
  description = <<EOT
Map of postgresql_flexible_server_firewall_rules, attributes below
Required:
    - end_ip_address
    - name
    - server_id
    - start_ip_address
EOT

  type = map(object({
    end_ip_address   = string
    name             = string
    server_id        = string
    start_ip_address = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_firewall_rules : (
        length(v.name) >= 1
      )
    ])
    error_message = "[from validate.FlexibleServerFirewallRuleName: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_firewall_rules : (
        length(v.name) <= 128
      )
    ])
    error_message = "[from validate.FlexibleServerFirewallRuleName: invalid when len(value) > 128]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

