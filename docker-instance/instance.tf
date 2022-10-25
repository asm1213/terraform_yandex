resource "yandex_compute_instance" "test-ubuntu22" {
  name                      = "test-ubuntu22"
  platform_id               = "standard-v2"
  zone                      = "ru-central1-a"
  allow_stopping_for_update = true

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 5
  }

  boot_disk {
    initialize_params {
      image_id = "fd8h059qvtg37ks9ke9o"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    user-data = file("${path.module}/cloud-init/provision.yaml")
  }

  scheduling_policy {
    preemptible = true
  }
}