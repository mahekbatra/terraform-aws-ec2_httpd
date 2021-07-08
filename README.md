# terraform-aws-wordpress

Integrating Wordpress with AWS RDS on AWS cloud using terraform.

Task Description:
1. Create an AWS EC2 instance
2. Configure the instance with Apache Webserver.
3. Download PHP application name “WordPress”.
4. As WordPress stores data at the backend in the MySQL Database server. Therefore, you need to set up a MySQL server using AWS RDS service using Free Tier.
5. Provide the endpoint/connection string to the WordPress application to make it work.

Variables:
1.aws_instance:
Required:
ami- The ID of the AMI used to launch the instance.

instance-type-The type of the Instance.

Optional:
instance_id - Specify the exact Instance ID with which to populate the data source.

instance_tags - A map of tags, each pair of which must exactly match a pair on the desired Instance.

2.aws_db_instance:
allocated_storage - (Required unless a snapshot_identifier or replicate_source_db is provided) The allocated storage in gibibytes.
If max_allocated_storage is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs.

identifier - (Optional, Forces new resource) The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier. Required if restore_to_point_in_time is specified.

instance_class - (Required) The instance type of the RDS instance.

name - (Optional) The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines.

password - (Required unless a snapshot_identifier or replicate_source_db is provided) Password for the master DB user. 

username - (Required unless a snapshot_identifier or replicate_source_db is provided) Username for the master DB user.

4.remote-exec Provisioner

The remote-exec provisioner invokes a script on a remote resource after it is created. This can be used to run a configuration management tool, bootstrap into a cluster, etc. To invoke a local process, see the local-exec provisioner instead. The remote-exec provisioner supports both ssh and winrm type connections.


