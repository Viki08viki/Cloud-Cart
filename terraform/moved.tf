moved {
  from = aws_vpc.cloudcart
  to   = module.network.aws_vpc.cloudcart
}

moved {
  from = aws_internet_gateway.cloudcart
  to   = module.network.aws_internet_gateway.cloudcart
}

moved {
  from = aws_route_table.public
  to   = module.network.aws_route_table.public
}

moved {
  from = aws_route_table.private
  to   = module.network.aws_route_table.private
}

moved {
  from = aws_subnet.public[0]
  to   = module.network.aws_subnet.public[0]
}

moved {
  from = aws_subnet.public[1]
  to   = module.network.aws_subnet.public[1]
}

moved {
  from = aws_subnet.private[0]
  to   = module.network.aws_subnet.private[0]
}

moved {
  from = aws_subnet.private[1]
  to   = module.network.aws_subnet.private[1]
}

moved {
  from = aws_route_table_association.public[0]
  to   = module.network.aws_route_table_association.public[0]
}

moved {
  from = aws_route_table_association.public[1]
  to   = module.network.aws_route_table_association.public[1]
}

moved {
  from = aws_route_table_association.private[0]
  to   = module.network.aws_route_table_association.private[0]
}

moved {
  from = aws_route_table_association.private[1]
  to   = module.network.aws_route_table_association.private[1]
}
moved {
  from = aws_security_group.app
  to   = module.compute.aws_security_group.app
}

moved {
  from = aws_vpc_security_group_ingress_rule.ssh
  to   = module.compute.aws_vpc_security_group_ingress_rule.ssh
}

moved {
  from = aws_vpc_security_group_ingress_rule.http
  to   = module.compute.aws_vpc_security_group_ingress_rule.http
}

moved {
  from = aws_vpc_security_group_egress_rule.all
  to   = module.compute.aws_vpc_security_group_egress_rule.all
}

moved {
  from = aws_instance.app
  to   = module.compute.aws_instance.app
}
