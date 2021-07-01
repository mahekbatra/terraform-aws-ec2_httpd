resource "aws_instance" "myos" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
		  "Name" = "My OS"
	  }
}



