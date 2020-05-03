# terraform-aws-staticwebsite

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> Terraform module to host SPA UI application in AWS S3

## Table of Contents

- [terraform-aws-staticwebsite](#terraform-aws-staticwebsite)
  - [Table of Contents](#table-of-contents)
  - [Install](#install)
  - [Usage](#usage)
  - [Maintainers](#maintainers)
  - [Contributing](#contributing)
  - [License](#license)

## Install

```
brew install terraform
```
Make sure that you have added the proper permission to create resources in AWS.

## Usage

This terraform module can be used with minimal configuration as follow,

```
module "website" {
  source = "github.com/worldofprasanna/terraform-aws-staticwebsite"
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
