### terraform-aws-asg-vpc


## Create a module.tf  and put the codes 
```
module "asg-vpc" {
  source  = "mustafatok2016/asg-vpc/aws"
  version = "1.6.0"

  region           = "us-east-1"
  key_name         = "asg-key-pair"                    #It will be created
  image_owner      = "849821742851"                    #137112412989
  desired_capacity = 1
  max_size         = 1
  min_size         = 1

cidr_block                  =   "10.0.0.0/16"

public_cidr1                =   "10.0.101.0/24"
public_cidr2                =   "10.0.102.0/24"
public_cidr3                =   "10.0.103.0/24"

private_cidr1               =   "10.0.1.0/24"
private_cidr2               =   "10.0.2.0/24"
private_cidr3               =   "10.0.3.0/24"

tags    =   {
    Name                    =   "Team2_VPC"
    Environment             =   "Dev"
    Team                    =   "DevOps"
    Department              =   "IT"
   }
}



```

```
terraform init
```

```
terraform apply
```
