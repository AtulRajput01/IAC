variable "aws_region" {
  description = "AWS region for Route53 resources"
  type        = string
  default     = "us-east-1"  # Route53 is global but region is needed for provider
}

variable "domain_name" {
  description = "The domain name for the hosted zone"
  type        = string
}

variable "environment" {
  description = "Environment tag for the resources"
  type        = string
  default     = "production"
}

variable "a_record_ip" {
  description = "IP address for the A record"
  type        = string
}

variable "cname_target" {
  description = "Target domain for the CNAME record"
  type        = string
}

variable "txt_record_value" {
  description = "Value for the TXT record"
  type        = string
  default     = "v=spf1 include:_spf.google.com ~all"  # Example SPF record
}