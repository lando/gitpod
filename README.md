[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/lando/gitpod)

# Lando Gitpod Integration

Contains Docker images that you can utilize to run [Lando](https://lando.dev) in your [Gitpod](https://gitpod.io) setup.

Contains 2 images:

- [devwithlando/gitpod](https://hub.docker.com/r/devwithlando/gitpod) which uses the [latest stable release](https://github.com/lando/lando/releases/latest) of Lando.
- [devwithlando/gitpod-source](https://hub.docker.com/r/devwithlando/gitpod-source) which builds Lando [from source](https://docs.lando.dev/basics/installation.html#from-source).

## Basic Usage

in your [.gitpod.yml](https://www.gitpod.io/docs/config-gitpod-file) put the following:

```yaml
image: devwithlando/gitpod:1

tasks:
  - name: Start Drupal
    command: |
      lando start
```

## Issues, Questions and Support

If you have a question or would like some community support we recommend you [join us on Slack](https://launchpass.com/devwithlando). Note that this is the Slack community for [Lando](https://lando.dev) but we are more than happy to help with this module as well!

If you'd like to report a bug or submit a feature request then please [use the issue queue](https://github.com/lando/gitpod/issues/new/choose) in this repo.

## Changelog

We try to log all changes big and small in both [THE CHANGELOG](https://github.com/lando/gitpod/blob/main/CHANGELOG.md) and the [release notes](https://github.com/lando/gitpod/releases).

## Contributors

<a href="https://github.com/lando/gitpod/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=lando/gitpod" />
</a>

Made with [contributors-img](https://contrib.rocks).

## Other Resources

* [Important advice](https://www.youtube.com/watch?v=WA4iX5D9Z64)
