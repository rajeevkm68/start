# Terraform AWS EC2 Example

This project provisions a basic Ubuntu EC2 instance on AWS using Terraform.

## 📁 Project Structure
```
.
├── main.tf           # Core infrastructure resources
├── variables.tf      # Variable declarations
├── outputs.tf        # Output values
├── data.tf          # Data sources (AMI, VPC)
├── locals.tf        # Local values and tags
├── providers.tf     # AWS provider configuration
├── versions.tf      # Terraform and provider versions
├── terraform.tfvars # Variable values
└── README.md        # This file
```

## 🚀 Prerequisites

- Terraform >= 1.5.0
- AWS CLI configured with valid credentials
- SSH key pair at `~/.ssh/id_ed25519.pub`

## 📝 Usage

1. **Initialize Terraform:**
```bash
   terraform init
```

2. **Review the plan:**
```bash
   terraform plan
```

3. **Apply the configuration:**
```bash
   terraform apply
```

4. **Connect to the instance:**
```bash
   ssh -i ~/.ssh/id_ed25519 ubuntu@<PUBLIC_IP>
```

## ⚙️ Configuration

Edit `terraform.tfvars` to customize:
```hcl
instance_type = "t3.micro"
region        = "ap-south-1"
ami_owner     = "099720109477"
```

## 🔒 Security Note

**IMPORTANT:** Change `ssh_ingress_cidr` in `variables.tf` from `0.0.0.0/0` to your IP address before deploying to production!

## 🧹 Cleanup
```bash
terraform destroy
```

## 📊 Outputs

After applying, Terraform will output:
- Public IP address
- Instance ID
- SSH connection command
- And more...

## 📜 License
