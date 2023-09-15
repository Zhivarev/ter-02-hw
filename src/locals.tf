locals {
  group = "netology"
  env = "develop"
  project = "platform"
}

locals {

  web = "${local.group}-${local.env}-${local.project}-web"
  db = "${local.group}-${local.env}-${local.project}-db"

}

locals {
  key_ssh_ssh-ed25519 = "ubuntu:${var.vms_ssh_root_key}"
}
