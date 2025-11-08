variable "instance_name" {
  type        = string
  description = "Name for the Google Compute instance"
}

variable "instance_zone" {
  type        = string
  description = "Zone for the Google Compute instance"
}

variable "instance_type" {
  type        = string
  description = "Machine type of the instance"
  default     = "e2-medium"
}
