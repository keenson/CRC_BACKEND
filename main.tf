

terraform {
  cloud {
    organization = "Thrinkshive"

    workspaces {
      name = "crc-backend"
    }
  }
}



