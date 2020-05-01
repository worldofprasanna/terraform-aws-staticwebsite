# static-site-s3

[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> Terraform module to host SPA UI application in AWS S3

## Table of Contents

- [static-site-s3](#static-site-s3)
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

## Usage

To plan the infrastructure,
```
terraform plan --out plan.out -var-file=sample.tfvars
```
To create the infrastructure,
```
terraform apply plan.out
```

## Maintainers

[@worldofprasanna](https://github.com/worldofprasanna)

## Contributing

PRs accepted.

Small note: If editing the README, please conform to the [standard-readme](https://github.com/RichardLitt/standard-readme) specification.

## License

MIT © 2020 Prasanna V
