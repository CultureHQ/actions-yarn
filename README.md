# GitHub Actions for yarn

This Action for [yarn](https://yarnpkg.com/en/) enables arbitrary actions with the `yarn` command-line client, including testing packages and publishing to a registry.

## Usage

An example workflow to lint and test:

```hcl
workflow "Main" {
  on = "push"
  resolves = ["Lint", "Test"]
}

action "Install" {
  uses = "docker://culturehq/actions-yarn:latest"
  args = "install"
}

action "Lint" {
  needs = "Install"
  uses = "docker://culturehq/actions-yarn:latest"
  args = "lint"
}

action "Test" {
  needs = "Install"
  uses = "docker://culturehq/actions-yarn:latest"
  args = "test"
}
```
