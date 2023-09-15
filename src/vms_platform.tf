variable "vm_web_compute_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Manage images"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Types of physical processors"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Types of physical processors"
}
