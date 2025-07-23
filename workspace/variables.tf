variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
}
variable "instance_type"{
    default = {
      dev= "t2.micro"
      prod = "t2.small"
    }
}
variable "instances" {
  default = ["mongodb","redis"]
  
}
variable "ec2_tags"{
    default= {
        Name = "hello world"
    }
}

variable "common_tags" {
  default = {
    project= "roboshop"
    terraform = true
  }
  
}
variable "sg_name" {
  default = "allow-all"
}
variable "from_port"{
    default = 0
}
variable "to_port"{
    default = 0
}
variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}
variable "sg_tags" {
  default =  "allow_all"
  
}