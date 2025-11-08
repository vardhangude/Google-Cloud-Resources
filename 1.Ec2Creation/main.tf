terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  backend "gcs" {
    bucket = "my-terraform-state-bucket"
    prefix = "terraform/state"
  }
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = "REGION"
  zone        = "ZONE"
}

resource "google_compute_instance" "terraform" {
  name         = "terraform"
  machine_type = var.machine_type
  tags         = var.instance_tags

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  allow_stopping_for_update = true
}
