# terraform_ec2_project
Terraform template for creating AWS ec2 in a custom VPC

This file contains template that will provision the below resources:
Creates a VPC and Subnet.
Creates route table and internet gateway.
Creates a route to the internet via internet gateway.
Creates route table and subnet association.
Creates security group with inbound rules for port 22/80 and outbound to internet.
Creates an EC2 instance with a key pair inside the subnet and is accessible via SSH.
Contains a user script that starts service httpd and displays a custom message.

NOTE: 
Download the files and run terraform init to initialize.
Run terraform apply to provision the template.
Run terraform destroy to destroy the resources
