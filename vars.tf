variable "region" {
  description = "AWS region to use"
  default     = "us-east-1"
}

variable "cluster_config_instance_count" {
  description = "Number of instances in the cluster"
  type        = number
  default     = 1
}

variable "es_domain" {
  description = "ElasticSearch domain name"
  default     = "esterraformexample"
}

variable "es_instance_type" {
  description = "ElasticSearch Instance Type"
  default     = "t2.small.elasticsearch"
}

variable "es_version" {
  description = "ElasticSearch Version"
  default     = "7.7"
}

variable "es_automated_snapshot_start_hour" {
  type        = number
  description = "Hour at which automated snapshots are taken, in UTC"
  default     = 23
}

variable "ebs_volume_size" {
  type        = number
  description = "EBS volumes for data storage in GB"
  default     = 0
}
variable "ebs_volume_type" {
  type        = string
  default     = "gp2"
  description = "Storage type of EBS volumes"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map
  default     = {}
}

# Whitelist (allow public IPs)
variable "whitelist" {
  default = []
}

# Advanced security options
# variable "advanced_security_options" {
#   description = "Options for fine-grained access control"
#   type        = any
#   default     = {}
# }

# variable "advanced_security_options_enabled" {
#   description = "Whether advanced security is enabled (Forces new resource)"
#   type        = bool
#   default     = false
# }

# variable "advanced_security_options_internal_user_database_enabled" {
#   description = "Whether the internal user database is enabled. If not set, defaults to false by the AWS API."
#   type        = bool
#   default     = false
# }

# variable "advanced_security_options_master_user_arn" {
#   description = "ARN for the master user. Only specify if `internal_user_database_enabled` is not set or set to `false`)"
#   type        = string
#   default     = null
# }

# variable "advanced_security_options_master_user_username" {
#   description = "The master user's username, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`."
#   type        = string
#   default     = null
# }

# variable "advanced_security_options_master_user_password" {
#   description = "The master user's password, which is stored in the Amazon Elasticsearch Service domain's internal database. Only specify if `internal_user_database_enabled` is set to `true`."
#   type        = string
#   default     = null
# }