terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "mlops_demo" {
  filename = "${path.module}/mlops.txt"

  content = <<-EOT
  MLOps Terraform Local Demo

  Project: Student ML Deployment
  Environment: Local
  Tool: Terraform
  EOT
}