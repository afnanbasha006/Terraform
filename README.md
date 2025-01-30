Terraform: 

Declarative method --> 

Imperm: step by step ins for how to done 


Terraform Core: 

user inputes --> .tf 

statefile --> 


5 instances --> 7 instances  --> .tfstate --> Ifile 

main.tf --> primary configurations 

variables.tf --> have variable 

###  Variable block in terraform access three parameters. 
default = value

type = string (accept single value, which can be alphanumeric, that is alphabets and numbers) 

number = accepts single value of a number +ve or -ve

bool = true/false 

any = Default valu    
description = ""
####

output.tf --> output values that you want to display 

provder.tf --> aws 

backend.tf --> backend configuration --> of S3, 

terraform.tfvars --> input variable 

modules --> reuse configuration for future purpose 


terraform init --> Init the plugins based on provider.tf

terraform plan --> tell what 

terraform apply --> action --> { 

terraform destory ---> delete 

Commands
terraform validate

terraform fmt

terraform show

terraform show -json

terraform providers

terraform output

terraform state pull

terraform state list

terraform state rm aws_instance.web2

terraform state list

terraform import aws_instance.web3 i-045b5e67195b79ed3

