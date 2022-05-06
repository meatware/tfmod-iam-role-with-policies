variable "role_name" {
  description = "AWS IAM role name"
  type        = string
}

variable "role_desc" {
  description = "AWS IAM role description"
  type        = string
}

variable "role_path" {
  description = "AWS IAM role path location"
  type        = string
}

variable "trusted_entity_principals" {
  description = "IAM Trusted entity principals"
  type        = map(string)
}

variable "custom_policies" {
  description = "Map of maps containing IAM policy definitions. Map key is used as policy name"
  type        = any
}

variable "managed_policies" {
  description = "Map of maps containing predinied IAM managed policy arns."
  type        = map(string)
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}
