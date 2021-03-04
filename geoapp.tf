module "geoapp" {
  for_each        = var.geo_list
  source          = "../terraform-modules/geoapp"
  geo             = each.value
  env             = var.env
  private_subnets = module.base.private_subnets
  listener_arn    = module.base.listener_arn
  file_system_dns = module.base.file_system_dns
  vpc_id          = module.base.vpc_id
  sg_ids          = module.base.aws_security_group
  priority        = tonumber(each.key)
  depends_on      = [ module.base ]
  ssh_key         = var.ssh_key
}