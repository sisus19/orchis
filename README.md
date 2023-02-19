# Modified Gnome Desktop
[![build](https://github.com/sisus19/orchis-blue/actions/workflows/build.yml/badge.svg)](https://github.com/sisus19/orchis-blue/actions/workflows/build.yml)

This is an immutable Fedora desktop. It uses [rpm-ostree](https://coreos.github.io/rpm-ostree/), [podman](https://podman.io/), and [toolbox](https://containertoolbx.org/) for container-focused development workflows.

## Usage

On Fedora Silverblue or Kinoite, run the following command to rebase :
```shell
rpm-ostree rebase ostree-unverified-registry:ghcr.io/sisus19/orchis-blue:latest
```

New images are built daily. To update to the latest diff, run:
```shell
rpm-ostree update
```
