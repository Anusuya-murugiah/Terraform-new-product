data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}


module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name          = var.instance_name
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  ami            = data.aws_ami.amazon_linux.id  

  tags = {
    Environment = var.environment
  }
}
