module "true" {
  source = "../"
  value  = "true"
}

module "t" {
  source = "../"
  value  = "t"
}

module "one" {
  source = "../"
  value  = "1"
}

module "on" {
  source = "../"
  value  = "on"
}

module "enable" {
  source = "../"
  value  = "enable"
}

module "false" {
  source = "../"
  value  = "false"
}

module "xyz" {
  source = "../"
  value  = "xyz"
}

module "t_and_f" {
  source = "../"
  value  = "${module.true.value && module.false.value}"
}

module "t_or_f" {
  source = "../"
  value  = "${module.true.value || module.false.value}"
}
