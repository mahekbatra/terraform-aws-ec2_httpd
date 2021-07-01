resource "null_resource"  "null2" {


connection {
    type     = "ssh"
    user     = var.user
    private_key = "${file("${var.credentials}")}"
    host     = aws_instance.myos.public_ip
  }


provisioner "remote-exec" {
    inline = [
      "sudo mkfs.ext4 /dev/sdh", 
      "sudo  mount /dev/sdh /var/www/html",
    ]
  }

}



