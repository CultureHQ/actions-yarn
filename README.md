# GitHub Actions for yarn

[![Build Status](https://github.com/CultureHQ/actions-yarn/workflows/Push/badge.svg)](https://github.com/CultureHQ/actions-yarn/actions)

This Action for [yarn](https://yarnpkg.com/en/) enables arbitrary actions with the `yarn` command-line client. Uses the node 11 docker image as its base.

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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/CultureHQ/actions-yarn.

## License

The code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
