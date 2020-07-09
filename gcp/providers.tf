terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "devops-training"

    workspaces {
      name = "Test-Alejo"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = "${var.region}-b"
}
