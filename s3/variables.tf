variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "news3bucket"
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
}