resource "null_resource" "null1"{
connection {
    type        = "ssh"
    user        = ec2.user
    private_key = "${file("${var.keyname}")}"
    host        = aws_instance.myos.public_ip
  }

provisioner "remote-exec" {   
    inline = [
      "sudo yum install mysql -y",  # mysql
      "sudo amazon-linux-extras install php7.2 -y", #php
      "sudo yum install httpd -y", #webserver
      "sudo wget https://wordpress.org/latest.tar.gz",  # wordpress tar file 
      "sudo cp latest* /var/www/html", #copy the file in /var/www/html
      "sudo tar -xvf latest.tar.gz", # untar file
      "sudo cp -r wordpress* /var/www/html",
      "sudo systemctl enable httpd --now", # restart and enable httpd
      "sudo mysql -h ${aws_db_instance.default.address} -u ${var.username} -p${var.password} -e 'CREATE DATABASE db1;'" #create a database in mysql
    ]
  }

}

