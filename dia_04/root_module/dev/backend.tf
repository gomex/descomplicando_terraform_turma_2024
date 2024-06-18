terraform {
  required_providers {
    mgc = {
      source = "MagaluCloud/mgc"
    }
  }
}

provider "mgc" {
  region = "br-ne1"
}