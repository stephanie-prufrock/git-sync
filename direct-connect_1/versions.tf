terraform {
  required_providers {
    samsungcloudplatformv2 = {
      version = "1.0.1"
      source = "SamsungSDSCloud/samsungcloudplatformv2"
    }
  }
  required_version = ">= 1.5"
}

provider "samsungcloudplatformv2" {
  default_region = var.region
}