module "ecs-windows" {
  source	= "jjno91/ecs-windows/aws"
  version	= "0.1.0"
  env		= vars.environment
  min_size	= vars.scaling["min"]
  max_size	= vars.scaling["max"]
  instance_type	= vars.instance_type
  tags		= vars.aws_labels
}
