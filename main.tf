#
# Terraform module to simplify and expand boolean use
#

locals {
  l     = "${lower(var.value)}"
  v1    = "${local.l == "true" ? 1 : 0}"
  v2    = "${local.v1 ? 1 : local.l == "t" ? 1 : 0}"
  v3    = "${local.v2 ? 1 : local.l == "1" ? 1 : 0}"
  v4    = "${local.v3 ? 1 : local.l == "on" ? 1 : 0}"
  v5    = "${local.v4 ? 1 : local.l == "enable" ? 1 : 0}"
  value = "${local.v5}"
}
