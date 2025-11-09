# Project 3: Configure Terraform Backends (Local → GCS)

This project demonstrates how to configure and migrate Terraform state from a **local backend** to a **Google Cloud Storage (GCS) remote backend**, and finally clean up your workspace.

## Tasks Overview

1. **Verify Terraform Installation**
2. **Add Local Backend**
3. **Add Cloud Storage Backend**
4. **Refresh State**
5. **Clean Up Workspace**

## Step-by-Step Commands

### Task 1: Verify Terraform Installation
```bash
terraform --version
```

### Task 2: Add Local Backend
```bash
touch main.tf
gcloud config list --format 'value(core.project)'
terraform init
terraform apply
terraform show
```

### Task 3: Add Cloud Storage Backend
Update backend in `main.tf`:
```hcl
terraform {
  backend "gcs" {
    bucket  = "qwiklabs-gcp-04-e67686e83016"
    prefix  = "terraform/state"
  }
}
```
Then run:
```bash
terraform init -migrate-state
```

### Task 4: Refresh State
```bash
terraform refresh
```

### Task 5: Clean Up
Revert backend to local and add force_destroy:
```hcl
terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}

resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-04-e67686e83016"
  location    = "US"
  uniform_bucket_level_access = true
  force_destroy = true
}
```
Then run:
```bash
terraform init -migrate-state
terraform apply
terraform destroy
```

---
**End of Project 3: Terraform Backend Configuration**
