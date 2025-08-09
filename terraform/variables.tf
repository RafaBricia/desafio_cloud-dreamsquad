variable "aws_region" {
  description = "Região AWS para provisionar recursos"
  type        = string
  default     = "us-east-1"  # região gratuita do Free Tier da AWS
}

variable "project_name" {
  type    = string
  default = "desafio-final"
}

variable "frontend_bucket_name" {
  type    = string
  default = ""
}

variable "files_bucket_name" {
  type    = string
  default = ""
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}
