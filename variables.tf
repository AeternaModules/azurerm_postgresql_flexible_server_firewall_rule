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
  # --- Unconfirmed validation candidates, derived from azurerm_postgresql_flexible_server_firewall_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.FlexibleServerFirewallRuleName] !ok
  # path: name
  #   condition: length(value) >= 1
  #   message:   [from validate.FlexibleServerFirewallRuleName: invalid when len(value) < 1]
  #   source:    [from validate.FlexibleServerFirewallRuleName: invalid when len(value) < 1]
  # path: name
  #   condition: length(value) <= 128
  #   message:   [from validate.FlexibleServerFirewallRuleName: invalid when len(value) > 128]
  #   source:    [from validate.FlexibleServerFirewallRuleName: invalid when len(value) > 128]
  # path: name
  #   source:    [from validate.FlexibleServerFirewallRuleName] !regexp.MustCompile(`^[a-zA-Z0-9-_]+$`).MatchString(v)
  # path: server_id
  #   source:    [from firewallrules.ValidateFlexibleServerID] !ok
  # path: server_id
  #   source:    [from firewallrules.ValidateFlexibleServerID] err != nil
  # path: end_ip_address
  #   source:    validation.IsIPv4Address(...) - no translation rule yet, add one
  # path: start_ip_address
  #   source:    validation.IsIPv4Address(...) - no translation rule yet, add one
}

