variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "product-instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID where EC2 will be launched"
  type        = string
  }

variable "key_name" {
  description = "Existing AWS Key Pair name for SSH access"
  type        = string
  default     = "product"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}
