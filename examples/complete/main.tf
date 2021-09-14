module "aci_psu_policy" {
  source  = "netascode/psu-policy/aci"
  version = ">= 0.0.1"

  name        = "PSU1"
  admin_state = "nnred"
}
