# To create a simple static website

This will provision the resources for website whose Route53 hosted zone, bucket name all are same (without any subdomain). You can create the website using the steps below,

```
cd examples/simple
terraform init
terraform plan -out plan.out
terraform apply plan.out
```