variable "environment"     { default = "ustx-dev-lab" }
variable "instance_type"   { default = "t2.medium" }
variable "region"          { default = "${env.AWS_DEFAULT_REGION}" }
variable "monitoring"      { default = true }
variable "scaling"	   {
      type    = "map"
      default = {
            "min"    = 0
            "max"    = 1
}
variable "aws_labels"      { 
      type = "map"
      default = {
            "net.matrix.orgunit"      = "Matrix NOC"
            "net.matrix.organization" = "Private Ops"
            "net.matrix.commonname"   = "cloud"
            "net.matrix.locality"     = "Dallas"
            "net.matrix.state"        = "Texas"
            "net.matrix.country"      = "USA"
            "net.matrix.environment"  = "${env.ENVIRONMENT}"
            "net.matrix.application"  = "infrastructure"
            "net.matrix.role"         = "application services"
            "net.matrix.owner"        = "FC13F74B@matrix.net"
            "net.matrix.customer"     = "PVT-01"
            "net.matrix.costcenter"   = "INT-01"
      }
}
