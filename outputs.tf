output "postgresql_flexible_server_firewall_rules" {
  description = "All postgresql_flexible_server_firewall_rule resources"
  value       = azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules
}
output "postgresql_flexible_server_firewall_rules_end_ip_address" {
  description = "List of end_ip_address values across all postgresql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : v.end_ip_address]
}
output "postgresql_flexible_server_firewall_rules_name" {
  description = "List of name values across all postgresql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : v.name]
}
output "postgresql_flexible_server_firewall_rules_server_id" {
  description = "List of server_id values across all postgresql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : v.server_id]
}
output "postgresql_flexible_server_firewall_rules_start_ip_address" {
  description = "List of start_ip_address values across all postgresql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_postgresql_flexible_server_firewall_rule.postgresql_flexible_server_firewall_rules : v.start_ip_address]
}

