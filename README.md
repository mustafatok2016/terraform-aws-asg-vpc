### terraform-aws-asg-vpc


## Create a module.tf  and put the codes 
```

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


# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "2.48.0"
#   # insert the 14 required variables here
# }

```

```
terraform init
```

```
terraform apply
```
