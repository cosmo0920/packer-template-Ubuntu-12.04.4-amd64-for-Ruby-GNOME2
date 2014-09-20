packer template Ubuntu 12.04.4 amd64 for Ruby-GNOME2 testing
===

Ubuntu 12.04.4 x86_64 packer template for Ruby-GNOME2 testing.

This packer template is originally based on [futoase/packer-template](https://github.com/futoase/packer-template)'s Ubuntu-12.04-x86_64.

## Usage

### build VagrantBox

```bash
$ packer build -only=virtualbox-iso template.json
```

### using vagrant box

```bash
$ vagrant up
```
