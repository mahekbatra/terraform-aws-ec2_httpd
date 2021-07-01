resource "null_resource" "null1"{
connection {
    type        = "ssh"
    user        = var.user
    private_key = "${file("${var.credentials}")}"
    host        = aws_instance.myos.public_ip
  }

provisioner "remote-exec" {   
    inline = [
      "sudo yum  install httpd  -y",
      "sudo  yum  install php  -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd"
    ]
  }

}

