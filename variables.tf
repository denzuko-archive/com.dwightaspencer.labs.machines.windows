variable "environment"     { default = "ustx-dev-lab" }
variable "instance_type"   { default = "t2.medium" }
variable "region"          { default = "us-east-1" }
variable "monitoring"      { default = true }
variable "scaling"	   {
      type    = map
      default = {
            "min"    = 0
            "max"    = 1
      }
}
variable "aws_labels"      { 
      type = map
      default = {
            "net.matrix.orgunit"      = "Matrix NOC"
            "net.matrix.organization" = "Private Ops"
            "net.matrix.commonname"   = "cloud"
            "net.matrix.locality"     = "Dallas"
            "net.matrix.state"        = "Texas"
            "net.matrix.country"      = "USA"
            "net.matrix.environment"  = vars.environment
            "net.matrix.application"  = "development"
            "net.matrix.role"         = "labs"
            "net.matrix.owner"        = "FC13F74B@matrix.net"
            "net.matrix.customer"     = "PVT-01"
            "net.matrix.costcenter"   = "INT-01"
      }
}
