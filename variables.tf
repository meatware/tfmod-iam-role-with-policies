# variable "env" {
#   description = "Deployment environment. e.g. dev, uat, prod"
#   type        = string
# }

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
  #type        = map(string)
}

variable "managed_policies" {
  description = "Map of maps containing predinied IAM managed policy arns."
  #type        = map(string)
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

# variable "bucket_source" {
#   description = "Exif-ripper source bucket that is monitored for new files"
#   type        = string
# }

# variable "bucket_dest" {
#   description = "Exif-ripper destination bucket that sanitised files are copied to"
#   type        = string
# }

# variable "ssm_root_prefix" {
#   description = "SSM root prefix used to construct the key path"
#   type        = string
# }

# variable "tags" {
#   description = "A map that is used to apply tags to resources created by terraform"
#   type        = map(string)
# }
