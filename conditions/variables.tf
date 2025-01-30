variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEl AMI ID"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "environment" {
  type        = string
  default     = "prod"
}


variable "ec2_tags" {
    type = map
    default = {
        Project = "expense"
        component = "backend"
        environment = "dev"
        Name = "expense-dev-backend"
    }
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type        = map
  default     = {
    Name : "expense-dev-backend"
  }
  
}


