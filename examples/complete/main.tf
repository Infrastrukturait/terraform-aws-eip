module "app_prod_label" {
  source  = "cloudposse/label/null"
  version = "v0.25.0"

  namespace  = "app"
  stage      = "prod"
  name       = "logs"
  attributes = ["private"]
  delimiter  = "-"

  tags = {
    "BusinessUnit" = "XYZ",
  }
}

module "app_prod_eip" {
  source = "../../"
  name   = join(module.app_prod_label.delimiter, [module.app_prod_label.stage, module.app_prod_label.name, var.name])
}
