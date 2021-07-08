variable "ami"{

}

variable "region"{
    default =  "ap-south-1"
}

variable "profile"{
    default = "default"
}

variable "instance_type"{
    default = "t2.micro"
}
variable "keyname"{
   default=""
}

variable "identifier"{
  default="testinstance"
}

variable "instance_class"{
  default="db.t2.micro"
}

variable "dbname"{
  default="mydb"
}

variable "username"{
  default=""
}

variable "password"{
  default=""
}

