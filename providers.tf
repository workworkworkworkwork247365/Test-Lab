
terraform {
  required_providers {
    equinix = {
      source = "equinix/equinix"
      version = "2.3.1"
    }
  }
}

provider equinix {
  client_id     = var.equinix_client_id
  client_secret = var.equinix_client_secret
}