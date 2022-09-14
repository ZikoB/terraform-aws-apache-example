Terraform Module to provision an EC2 instance that is running Apache.

```hcl
provider "aws" {
  region = "us-east-1"
}

module "apache" {
  source          = ".//terraform-aws-appache-example"
  vpc_id          = "vpc-000000"
  my_ip_with_cidr = "MY_IP_with_cidr"
  public_key      = "MY_PUBLIC_KEY"
  instance_type   = "INSTANCE_TYPE"
  server_name     = "Apache Example Server"
}

output "public_ip" {
  value = module.apache.public_ip
}
```