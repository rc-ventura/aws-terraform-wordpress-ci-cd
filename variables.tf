# environment vars
#---------------------------------------
variable "environment" {
  type    = string
  default = "DEV"

  validation {
    condition     = contains(["DEV", "QA", "PROD"], upper(var.environment))
    error_message = "The 'environment' tag must be one of 'DEV','QA', or 'PROD'."
  }
  validation {
    condition     = upper(var.environment) == var.environment
    error_message = "The 'environment' tag must be in all in uppercase."
  }
}
variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}
variable "app_name" {
  type        = string
  description = "application name"
  default     = "wordpressApp"
}

variable "az_count" {
  type        = number
  description = "Number of availability zones to use"
  default     = 2
}