resource "aws_ebs_volume" "v1" {
  availability_zone = aws_instance.myos.availability_zone
  size              = var.size
  tags = {
    Name = "LinuxWorld"
  }
}
