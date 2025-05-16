variable "region" {
     description = "Region of AWS VPC"
}
variable "name" {
  default = "myadmin"
  type        = string
  description = "The name of the users"
}

variable "policy_arns" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  type        = string
  description = "ARN of policy to be associated with the created IAM user"
}