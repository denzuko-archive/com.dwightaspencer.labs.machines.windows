module "ecs-windows" {
  source	= "jjno91/ecs-windows/aws"
  version	= "0.1.0"
  instance_type	= "t3.medium"
  tags		= vars.aws_labels
  min_size	= 0
  max_size	= 1
  env		= "ustx-dev-lab"
}
