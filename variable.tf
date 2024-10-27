variable "access_key" {
  description = "Database administrator access key"
  type        = string
  sensitive   = true
}

variable "secret_value" {
  description = "Database administrator secret value"
  type        = string
  sensitive   = true
}
