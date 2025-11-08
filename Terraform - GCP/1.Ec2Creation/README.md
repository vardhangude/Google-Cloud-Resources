# 🏗️ Infrastructure as Code with Terraform on Google Cloud

This repository demonstrates how to **provision, update, and destroy** infrastructure on **Google Cloud Platform (GCP)** using **Terraform**.

## 📁 Project Structure

```
terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
```

---

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/gcp-terraform-iac.git
cd terraform
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Format & Validate Configuration
```bash
terraform fmt
terraform validate
```

### 4. Preview Changes
```bash
terraform plan
```

### 5. Apply Configuration
```bash
terraform apply
```

Type `yes` when prompted.

### 6. Destroy Infrastructure
```bash
terraform destroy
```

---

## 🔒 Handling Sensitive Data

- Define credentials and project ID in a local `terraform.tfvars` file (based on `terraform.tfvars.example`).
- **Never** commit real credentials or state files to Git.
- Use `.gitignore` to protect secrets and state.

Example `terraform.tfvars`:
```hcl
project_id       = "my-gcp-project-id"
credentials_file = "/path/to/service-account-key.json"
machine_type     = "e2-medium"
instance_tags    = ["web", "prod"]
```

Alternatively, set environment variables:
```bash
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/service-account-key.json"
export TF_VAR_project_id="my-gcp-project-id"
```

---

## 🧠 Notes & Best Practices

- Use `terraform fmt` to keep your code tidy.
- Run `terraform validate` before applying.
- Manage your state remotely (GCS backend configured).
- Sensitive variables are hidden in CLI outputs.
- Version-lock providers for stability.
- Consider adding CI/CD checks for `fmt`, `validate`, and `plan`.

---

Happy Automating with Terraform ☁️
