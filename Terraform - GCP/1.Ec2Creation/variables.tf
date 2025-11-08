variable "project_id" {
  description = "The GCP project ID where resources will be created."
  type        = string
  sensitive   = true
}

variable "credentials_file" {
  description = "Path to the service account JSON key file."
  type        = string
  sensitive   = true
}

variable "machine_type" {
  description = "Machine type for the VM."
  type        = string
  default     = "e2-micro"
}

variable "instance_tags" {
  description = "Tags to assign to the instance."
  type        = list(string)
  default     = ["web", "dev"]
}
