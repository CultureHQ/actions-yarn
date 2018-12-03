# GitHub Actions for yarn

This Action for [yarn](https://yarnpkg.com/en/) enables arbitrary actions with the `yarn` command-line client, including testing packages and publishing to a registry.

## Usage

An example workflow to build, test, and publish an npm package to the default public registry follows:

```hcl
workflow "Build, Test, and Publish" {
  on = "push"
  resolves = ["Publish"]
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

action "Publish" {
  needs = "Test"
  uses = "culturehq/actions-yarn@master"
  args = "publish --access public"
  secrets = ["NPM_AUTH_TOKEN"]
}
```

### Secrets

* `NPM_AUTH_TOKEN` - **Optional**. The token to use for authentication with the npm registry. Required for `npm publish` ([more info](https://docs.npmjs.com/getting-started/working_with_tokens))

### Environment variables

* `NPM_REGISTRY_URL` - **Optional**. To specify a registry to authenticate with. Defaults to `registry.npmjs.org`
* `NPM_CONFIG_USERCONFIG` - **Optional**. To specify a non-default per-user configuration file. Defaults to `$HOME/.npmrc` ([more info](https://docs.npmjs.com/misc/config#npmrc-files))

#### Example

To authenticate with, and publish to, a registry other than `registry.npmjs.org`:

```hcl
action "Publish" {
  uses = "culturehq/actions-yarn@master"
  args = "publish --access public"
  env = {
    NPM_REGISTRY_URL = "someOtherRegistry.someDomain.net"
  }
  secrets = ["NPM_AUTH_TOKEN"]
}
```
