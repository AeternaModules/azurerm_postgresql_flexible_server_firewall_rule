output "postgresql_flexible_server_firewall_rules_id" {
  description = "Map of id values across all postgresql_flexible_server_firewall_rules, keyed the same as var.postgresql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : k => v.id }
}
output "postgresql_flexible_server_firewall_rules_end_ip_address" {
  description = "Map of end_ip_address values across all postgresql_flexible_server_firewall_rules, keyed the same as var.postgresql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : k => v.end_ip_address }
}
output "postgresql_flexible_server_firewall_rules_name" {
  description = "Map of name values across all postgresql_flexible_server_firewall_rules, keyed the same as var.postgresql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : k => v.name }
}
output "postgresql_flexible_server_firewall_rules_server_id" {
  description = "Map of server_id values across all postgresql_flexible_server_firewall_rules, keyed the same as var.postgresql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : k => v.server_id }
}
output "postgresql_flexible_server_firewall_rules_start_ip_address" {
  description = "Map of start_ip_address values across all postgresql_flexible_server_firewall_rules, keyed the same as var.postgresql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : k => v.start_ip_address }
}

