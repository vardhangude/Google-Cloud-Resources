# Automating the Deployment of Infrastructure Using Terraform

This project demonstrates how to automate Google Cloud infrastructure deployment using **Terraform**.  
It creates a VPC network, firewall rule, and two VM instances through a reusable Terraform module.

## 🚀 Overview
Terraform enables you to safely and predictably create, change, and manage infrastructure as code.  
In this experiment, you’ll use Terraform to:
- Create an **auto mode VPC network**
- Configure a **firewall rule**
- Develop a **reusable VM module**
- Deploy **two virtual machines** across regions

## 🧰 Tools Used
- **Google Cloud Platform (GCP)**
- **Terraform v1.5.7+**
- **Google Cloud Shell**

## ⚙️ Steps to Run
1. Verify Terraform installation:
   ```bash
   terraform --version
   ```
2. Create working directory:
   ```bash
   mkdir tfinfra && cd tfinfra
   ```
3. Add provider, network, and instance configurations as shown.
4. Run Terraform commands:
   ```bash
   terraform fmt
   terraform init
   terraform plan
   terraform apply
   ```
5. Verify resources in GCP Console.

## ✅ Output
```
Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
```

---

## 🧩 Terraform Knowledge Check

Here are a few key Terraform questions and answers related to this project:

1️⃣ **What is the purpose of output values within modules?**  
✅ *A) Pass resource attributes outside a module.*  
Output values allow modules to expose information (like IPs, IDs, etc.) to other parts of your configuration.

---

2️⃣ **What happens when a version argument is specified in a module block?**  
✅ *A) Terraform automatically upgrades the module to the latest version matching the specified constraint.*  
This helps maintain consistent and predictable module behavior across environments.

---

3️⃣ **True or False:** The source of a module can only be remote.  
✅ *False.*  
Modules can be sourced **locally**, from a **Git repository**, or **Terraform Registry**.

---

4️⃣ **Which code construct of Terraform helps you parameterize a configuration?**  
✅ *Variables.*  
Variables allow dynamic configuration without hardcoding values, improving reusability and flexibility.

---

💡 *These concepts are essential when working with modular, reusable Terraform configurations like the one in this project.*
