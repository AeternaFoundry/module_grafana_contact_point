output "contact_points_id" {
  description = "Map of id values across all contact_points, keyed the same as var.contact_points except keys with no id are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.id if v.id != null && length(v.id) > 0 }
}
output "contact_points_alertmanager" {
  description = "Map of alertmanager values across all contact_points, keyed the same as var.contact_points except keys with no alertmanager are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.alertmanager if v.alertmanager != null && length(v.alertmanager) > 0 }
  sensitive   = true
}
output "contact_points_dingding" {
  description = "Map of dingding values across all contact_points, keyed the same as var.contact_points except keys with no dingding are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.dingding if v.dingding != null && length(v.dingding) > 0 }
  sensitive   = true
}
output "contact_points_disable_provenance" {
  description = "Map of disable_provenance values across all contact_points, keyed the same as var.contact_points except keys with no disable_provenance are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.disable_provenance if v.disable_provenance != null }
}
output "contact_points_discord" {
  description = "Map of discord values across all contact_points, keyed the same as var.contact_points except keys with no discord are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.discord if v.discord != null && length(v.discord) > 0 }
  sensitive   = true
}
output "contact_points_email" {
  description = "Map of email values across all contact_points, keyed the same as var.contact_points except keys with no email are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.email if v.email != null && length(v.email) > 0 }
  sensitive   = true
}
output "contact_points_googlechat" {
  description = "Map of googlechat values across all contact_points, keyed the same as var.contact_points except keys with no googlechat are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.googlechat if v.googlechat != null && length(v.googlechat) > 0 }
  sensitive   = true
}
output "contact_points_jira" {
  description = "Map of jira values across all contact_points, keyed the same as var.contact_points except keys with no jira are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.jira if v.jira != null && length(v.jira) > 0 }
  sensitive   = true
}
output "contact_points_kafka" {
  description = "Map of kafka values across all contact_points, keyed the same as var.contact_points except keys with no kafka are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.kafka if v.kafka != null && length(v.kafka) > 0 }
  sensitive   = true
}
output "contact_points_line" {
  description = "Map of line values across all contact_points, keyed the same as var.contact_points except keys with no line are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.line if v.line != null && length(v.line) > 0 }
  sensitive   = true
}
output "contact_points_name" {
  description = "Map of name values across all contact_points, keyed the same as var.contact_points except keys with no name are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.name if v.name != null && length(v.name) > 0 }
}
output "contact_points_oncall" {
  description = "Map of oncall values across all contact_points, keyed the same as var.contact_points except keys with no oncall are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.oncall if v.oncall != null && length(v.oncall) > 0 }
  sensitive   = true
}
output "contact_points_opsgenie" {
  description = "Map of opsgenie values across all contact_points, keyed the same as var.contact_points except keys with no opsgenie are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.opsgenie if v.opsgenie != null && length(v.opsgenie) > 0 }
  sensitive   = true
}
output "contact_points_org_id" {
  description = "Map of org_id values across all contact_points, keyed the same as var.contact_points except keys with no org_id are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "contact_points_pagerduty" {
  description = "Map of pagerduty values across all contact_points, keyed the same as var.contact_points except keys with no pagerduty are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.pagerduty if v.pagerduty != null && length(v.pagerduty) > 0 }
  sensitive   = true
}
output "contact_points_pushover" {
  description = "Map of pushover values across all contact_points, keyed the same as var.contact_points except keys with no pushover are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.pushover if v.pushover != null && length(v.pushover) > 0 }
  sensitive   = true
}
output "contact_points_sensugo" {
  description = "Map of sensugo values across all contact_points, keyed the same as var.contact_points except keys with no sensugo are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.sensugo if v.sensugo != null && length(v.sensugo) > 0 }
  sensitive   = true
}
output "contact_points_slack" {
  description = "Map of slack values across all contact_points, keyed the same as var.contact_points except keys with no slack are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.slack if v.slack != null && length(v.slack) > 0 }
  sensitive   = true
}
output "contact_points_sns" {
  description = "Map of sns values across all contact_points, keyed the same as var.contact_points except keys with no sns are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.sns if v.sns != null && length(v.sns) > 0 }
  sensitive   = true
}
output "contact_points_teams" {
  description = "Map of teams values across all contact_points, keyed the same as var.contact_points except keys with no teams are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.teams if v.teams != null && length(v.teams) > 0 }
  sensitive   = true
}
output "contact_points_telegram" {
  description = "Map of telegram values across all contact_points, keyed the same as var.contact_points except keys with no telegram are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.telegram if v.telegram != null && length(v.telegram) > 0 }
  sensitive   = true
}
output "contact_points_threema" {
  description = "Map of threema values across all contact_points, keyed the same as var.contact_points except keys with no threema are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.threema if v.threema != null && length(v.threema) > 0 }
  sensitive   = true
}
output "contact_points_victorops" {
  description = "Map of victorops values across all contact_points, keyed the same as var.contact_points except keys with no victorops are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.victorops if v.victorops != null && length(v.victorops) > 0 }
  sensitive   = true
}
output "contact_points_webex" {
  description = "Map of webex values across all contact_points, keyed the same as var.contact_points except keys with no webex are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.webex if v.webex != null && length(v.webex) > 0 }
  sensitive   = true
}
output "contact_points_webhook" {
  description = "Map of webhook values across all contact_points, keyed the same as var.contact_points except keys with no webhook are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.webhook if v.webhook != null && length(v.webhook) > 0 }
  sensitive   = true
}
output "contact_points_wecom" {
  description = "Map of wecom values across all contact_points, keyed the same as var.contact_points except keys with no wecom are omitted"
  value       = { for k, v in grafana_contact_point.contact_points : k => v.wecom if v.wecom != null && length(v.wecom) > 0 }
  sensitive   = true
}

