output "zone_id" {
  description = "The ID of the hosted zone"
  value       = aws_route53_zone.primary.zone_id
}

output "zone_name_servers" {
  description = "List of name servers for the hosted zone"
  value       = aws_route53_zone.primary.name_servers
}

output "www_record_fqdn" {
  description = "The FQDN of the www record"
  value       = aws_route53_record.www.fqdn
}

output "app_record_fqdn" {
  description = "The FQDN of the app subdomain"
  value       = aws_route53_record.subdomain.fqdn
}