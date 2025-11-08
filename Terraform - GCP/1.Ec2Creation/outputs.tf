output "instance_name" {
  description = "Name of the created instance"
  value       = google_compute_instance.terraform.name
}

output "instance_zone" {
  description = "Zone where the instance is deployed"
  value       = google_compute_instance.terraform.zone
}

output "instance_tags" {
  description = "Tags applied to the instance"
  value       = google_compute_instance.terraform.tags
}

output "instance_ip" {
  description = "External IP address of the VM"
  value       = google_compute_instance.terraform.network_interface[0].access_config[0].nat_ip
}
