# terraform-aws-staticwebsite

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> Terraform module to host SPA UI application in AWS S3

You can read about the blog post [here](https://blog.francium.tech/how-to-serve-your-website-from-aws-s3-using-terraform-94dfd16324bf).
Note: If you find the blog/code useful, please add a clap in medium / star the github repo. Thanks in advance !!

## Table of Contents

- [terraform-aws-staticwebsite](#terraform-aws-staticwebsite)
  - [Table of Contents](#table-of-contents)
  - [Infrastructure](#infrastructure)
  - [Install](#install)
  - [Usage](#usage)
  - [Maintainers](#maintainers)
  - [Contributing](#contributing)
  - [License](#license)

## Infrastructure

![infrastructure](Infrastructure.png)

## Install

```
brew install terraform
```
Make sure that you have added the proper permission to create resources in AWS.

## Usage

This terraform module can be used with minimal configuration as follow,

```
module "staticwebsite" {
  source  = "worldofprasanna/staticwebsite/aws"
  version = "1.0.0"
  domain = "yourdomain.com"
}
```
Note: Please ensure that you have added the Route53 Nameservers to your Domain Registrar (say: Godaddy etc)

You can find the actual examples [here](examples/README.md)

## Maintainers

[@worldofprasanna](https://github.com/worldofprasanna)

## Contributing

PRs accepted.

Small note: If editing the README, please conform to the [standard-readme](https://github.com/RichardLitt/standard-readme) specification.

## License

MIT © 2020 Prasanna V
