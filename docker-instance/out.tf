output "external_ip_address_vm" {
  value = yandex_compute_instance.test-ubuntu22.network_interface.0.nat_ip_address
} 