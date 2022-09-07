resource "aws_instance" "ex" {
  instances = module.servers.instance_id

}

module "servers" {
  source  = "./app-cluster"
  servers = 3

}