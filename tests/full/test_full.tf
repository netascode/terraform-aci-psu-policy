terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  name        = "PSU1"
  admin_state = "nnred"
}

data "aci_rest" "psuInstPol" {
  dn = "uni/fabric/psuInstP-${module.main.name}"

  depends_on = [module.main]
}

resource "test_assertions" "psuInstPol" {
  component = "psuInstPol"

  equal "name" {
    description = "name"
    got         = data.aci_rest.psuInstPol.content.name
    want        = module.main.name
  }

  equal "adminRdnM" {
    description = "adminRdnM"
    got         = data.aci_rest.psuInstPol.content.adminRdnM
    want        = "rdn"
  }
}
