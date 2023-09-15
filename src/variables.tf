###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEktd+Bc+kW7z9RvP/794IT/kbmrdtCllpxOdC1H0x8k "
  description = "ssh-keygen -t ed25519"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_resources" {
  type    = map(string)
  default = {
    cores         = 2
    memory        = 1
    core_fraction = 5
  }
}

variable "vm_db_resources" {
  type    = map(string)
  default = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
}

variable "metadata_ssh_enable_ssh-keys" {
  type    = map(string)
  default = {
    serial-port-enable = 1
    ssh-keys           = "local.key_ssh_ssh-ed25519"
  }
}
