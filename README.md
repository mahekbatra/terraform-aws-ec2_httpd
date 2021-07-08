# terraform-aws-ec2_rds_wp

Integrating Wordpress with AWS RDS on AWS cloud using terraform.

Module will perform following actions:
1.Create an Aws instance with Apache web server.
2.Configure the instance with Apache Web server
3.Download php application name "WordPress"
4.It will setup mysql server using AWS RDS free tier.
5.Provide endpoint connection to the wordpress appication.

Example:
module "ec2_rds_wp" {
  source  = "mahekbatra/ec2_rds_wp/aws"
  version = "1.0.2"
  ami = "ami-011c99152163a87ae"
  instance_type = "t2.micro"
  size = 1
  region = ap-south-1
  user = "ec2-user"
  credentials = "C:/Users/Mahek Batra/Downloads/key.pem"
 }

Variables:

1.aws_instance:
Required:
ami- The ID of the AMI used to launch the instance.

instance-type-The type of the Instance.

Optional:
instance_id - Specify the exact Instance ID with which to populate the data source.

instance_tags - A map of tags, each pair of which must exactly match a pair on the desired Instance.


2.aws_ebs_volume:

availability_zone(Required)-The AZ where the EBS volume will exist.

encrypted - (Optional) If true, the disk will be encrypted.
iops - (Optional) The amount of IOPS to provision for the disk. Only valid for type of io1, io2 or gp3.
multi_attach_enabled - (Optional) Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported exclusively on io1 volumes.
size - (Optional) The size of the drive in GiBs.
snapshot_id (Optional) A snapshot to base the EBS volume off of.

3.local-exec Provisioner

The local-exec provisioner invokes a local executable after a resource is created. This invokes a process on the machine running Terraform, not on the resource. See the remote-exec provisioner to run commands on the resource.

4.remote-exec Provisioner

The remote-exec provisioner invokes a script on a remote resource after it is created. This can be used to run a configuration management tool, bootstrap into a cluster, etc. To invoke a local process, see the local-exec provisioner instead. The remote-exec provisioner supports both ssh and winrm type connections.


