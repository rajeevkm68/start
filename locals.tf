locals {
  project_name = "terraform-demo"
  environment  = "dev"
  region       = "ap-south-1"

  common_tags = {
    Project     = "terraform-demo"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
