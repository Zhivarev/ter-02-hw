output "external_ip_address_vm_web" {
  value = yandex_compute_instance.platform_web.network_interface.0.nat_ip_address
}

output "external_ip_address_vm_db" {
  value = yandex_compute_instance.platform_db.network_interface.0.nat_ip_address
}
