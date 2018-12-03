# GitHub Actions for yarn

This Action for [yarn](https://yarnpkg.com/en/) enables arbitrary actions with the `yarn` command-line client, including testing packages and publishing to a registry.

## Usage

An example workflow to build and test:

```hcl
workflow "Build and Test" {
  on = "push"
  resolves = ["Build and Test"]
}

action "Build" {
  uses = "culturehq/actions-yarn@master"
  args = "install"
}

action "Test" {
  needs = "Build"
  uses = "culturehq/actions-yarn@master"
  args = "test"
}
```
