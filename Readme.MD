# 🧠 Introduction to OpenTofu

OpenTofu is an open-source fork of Terraform, developed in response to HashiCorp's licensing change from open source to BSL (Business Source License). This change restricted companies from offering Terraform as a managed service, sparking the creation of OpenTofu to retain the open-source ethos of Terraform.

---

## 🚀 Why OpenTofu?

### ✅ Terraform Licensing Shift

- HashiCorp moved Terraform to a **BSL license**, limiting commercial use.
- Internal use of Terraform (e.g., by DevOps engineers) is still fine.
- Companies offering Terraform as a service (e.g., Terragrunt, Env0) are restricted.

### ✅ OpenTofu Is the Community-Driven Fork

- Maintains open-source license.
- Built from Terraform's source code (around v1.5).
- Backed by contributors and organizations.
- Adds **highly requested features** not implemented in Terraform.

---

## ⚙️ Key Features

| Feature                | Terraform | OpenTofu |
| ---------------------- | --------- | -------- |
| Open Source License    | ❌ (BSL)   | ✅ (OSS)  |
| State Encryption       | ❌         | ✅        |
| Provider Compatibility | ✅         | ✅        |
| CLI Compatibility      | ✅         | ✅        |
| Community Contribution | Limited   | Open     |

---

## 🔧 Installing OpenTofu on Windows

Use the Windows Package Manager:

```powershell
winget install --exact --id=OpenTofu.Tofu
````

Verify the installation:

```powershell
tofu -version
```

---

## 📁 Using OpenTofu with HCL (S3 Bucket Example)

**main.tf**

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-s3-bucket-123456"
  acl    = "private"
}
```

**Terminal Commands:**

```powershell
tofu init
tofu plan
tofu apply -auto-approve
```

✅ Your S3 bucket will be created in AWS!

---

## 🤔 Should You Switch to OpenTofu?

| Use Case                                     | Recommendation          |
| -------------------------------------------- | ----------------------- |
| Offering Terraform as a service              | Move to OpenTofu        |
| Internal infrastructure management           | OK to stay on Terraform |
| Want OSS freedom & faster community features | Try OpenTofu            |

OpenTofu is still growing, but already shows promise with community-driven features, better responsiveness, and a transparent governance model.

---

## 📚 Resources

* 🌐 [OpenTofu Official Site](https://opentofu.org/)
* 📘 [OpenTofu GitHub Repository](https://github.com/opentofu/opentofu)
* 🧾 [OpenTofu Documentation](https://docs.opentofu.org/)

---

## 💡 Final Thoughts

Whether you're just exploring OpenTofu or considering a migration, it’s great to know that you don’t have to rewrite your infrastructure code — OpenTofu supports the same providers and syntax. It’s Terraform, but with a truly open-source soul.

Start exploring, experimenting, and contributing!

> "OpenTofu is like Terraform, but it remembers its roots: open, community-first, and rapidly evolving."

---

🎥 *Credit to Abhishek for the original video that inspired this documentation.*

```

