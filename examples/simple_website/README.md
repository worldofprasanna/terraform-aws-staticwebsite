# To create a simple static website (served at naked / www domain)

```
cd examples/simple_website
terraform init
terraform plan -out plan.out
terraform apply plan.out
```