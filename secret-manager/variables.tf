variable "secret_name" {
  description = "Enter the name for your secret (e.g., your-serets-name)"
  type        = string
}

variable "secret_json_file" {
  description = "Path to the JSON file containing secret values"
  type        = string
  default     = "secrets.json"
}