# ☁️ Terraform on Google Cloud – Dependency Management

## 📘 Project Overview
This repository demonstrates **Terraform dependency management** using Google Cloud Platform (GCP).  
It covers:
- Terraform initialization
- Provider configuration for Google Cloud
- Implicit and explicit resource dependencies
- Dependency graph visualization

---

## 📁 Repository Structure

```
terraform-gcp-dependencies/
│
├── tfinfra/
│   ├── provider.tf          # Provider configuration for GCP
│   ├── instance.tf          # Compute instance and static IP
│   ├── variables.tf         # Terraform input variables
│   ├── outputs.tf           # Terraform output values
│   ├── exp.tf               # Explicit dependency example
│   └── README.md            # Project 2 detailed walkthrough
│
├── .gitignore               # Terraform best-practice ignore rules
└── LICENSE                  # MIT open-source license
```

---

## 🚀 Getting Started

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/<YOUR_USERNAME>/terraform-gcp-dependencies.git
cd terraform-gcp-dependencies/tfinfra
```

### 2️⃣ Initialize Terraform
```bash
terraform init
```

### 3️⃣ Plan & Apply Changes
```bash
terraform plan
terraform apply
```

### 4️⃣ View Dependency Graph
```bash
terraform graph | dot -Tpng > graph.png
```

---

## 🧠 Key Concepts
- **Implicit Dependencies:** Terraform infers relationships automatically when one resource references another.  
- **Explicit Dependencies:** Declared manually using `depends_on`.  
- **Terraform Graph:** A visual representation of resource order and relationships.  

---

## 📜 License
This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## 👤 Author
**[Your Name]**  
Cloud Infrastructure Engineer | Terraform Practitioner  
🔗 LinkedIn: [your-linkedin-profile]  
📧 Email: your.email@example.com
