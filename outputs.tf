output "dn" {
  value       = aci_rest.psuInstPol.id
  description = "Distinguished name of `psuInstPol` object."
}

output "name" {
  value       = aci_rest.psuInstPol.content.name
  description = "PSU policy name."
}
