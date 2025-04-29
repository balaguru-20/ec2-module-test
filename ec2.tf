module "ec2" { #we can name it which name we want for module
  source        = "../terraform-aws-ec2"
  sg_id         = "sg-08f49690bf42656e1" #If we given sg_id in source code, that will be overriden here
  instance_type = "t3.small"
}

output "public_ip" {
  value = module.ec2.public_ip
}