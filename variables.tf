variable "aws_region" {
  description = "The AWS region to deploy to (e.g. eu-west-1)"
  type        = string
  default     = "us-east-1"
}

variable "geo_list" {
  type = map(any)
  default = {
    "1" = "us",
    "2" = "eu"
  }
}

variable "env" {
  description = "Environment name for resource naming"
  type        = string
  default     = "dev"
}

variable "ssh_key" {
  description = "Ssh key name in AWS"
  type        = string
  default     = "dinkar-key"
}