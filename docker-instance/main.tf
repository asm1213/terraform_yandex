terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = var.yctoken
  cloud_id  = var.ycloudid
  folder_id = var.ycfolderid
  zone      = "ru-central1-a"
}