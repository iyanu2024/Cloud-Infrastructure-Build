variable "aws_region" {
  description = "AWS region to create the bucket in"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally unique name for the S3 bucket"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$", var.bucket_name))
    error_message = "Bucket name must be 3-63 characters: lowercase letters, numbers, dots and hyphens only."
  }
}

variable "environment" {
  description = "Environment name (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "enable_versioning" {
  description = "Turn on object versioning"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Allow terraform destroy to delete the bucket even if it contains objects"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Extra tags to apply to the bucket"
  type        = map(string)
  default     = {}
}