resource "digitalocean_droplet" "vm01" {
    image = "ubuntu-18-04-x64"
    name = "vm01"
    region = "ams3"
    size = "s-2vcpu-2gb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]

    connection {
      user = "root"
      type = "ssh"
      private_key = file(var.pvt_key)
      timeout = "2m"
  }
}