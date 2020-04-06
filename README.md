**Deprecated** - use `actions/setup-node` instead

# GitHub Actions for yarn

[![Build Status](https://github.com/CultureHQ/actions-yarn/workflows/Push/badge.svg)](https://github.com/CultureHQ/actions-yarn/actions)

This Action for [yarn](https://yarnpkg.com/en/) enables arbitrary actions with the `yarn` command-line client. Uses the node 11 docker image as its base.

## Usage

An example workflow to lint and test:

```yaml
on: push
name: Main
jobs:
  lint-and-test:
    name: Test
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Install
      uses: CultureHQ/actions-yarn@master
      with:
        args: install
    - name: Lint
      uses: CultureHQ/actions-yarn@master
      with:
        args: lint
    - name: Test
      uses: CultureHQ/actions-yarn@master
      with:
        args: test
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/CultureHQ/actions-yarn.

## License

The code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
