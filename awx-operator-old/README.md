# Ansible AWX Operator

This chart is community maintained by [@Dylan-Turnbull](https://github.com/dylanturn)

## TL;DR;

```console
$ git clone https://github.com/project-octal/helm-charts
$ cd helm-charts
$ helm upgrade --install awx-operator awx-operator
```

## Introduction

This chart bootstraps an Ansible AWX operator on a
[Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh)
package manager.

## Prerequisites

  - Kubernetes 1.6+

## Installing the Chart

To install the chart with the release name `awx-operator`:

```console
$ git clone https://github.com/project-octal/helm-charts
$ cd helm-charts
$ helm upgrade --install awx-operator awx-operator
```

The command deploys Ansible AWX on the Kubernetes cluster in the default
configuration. The [configuration](#configuration) section lists the parameters
that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `awx-operator` operator:

```console
$ helm delete awx-operator
```

The command removes all the Kubernetes components associated with the chart and
deletes the release.

## Configuration

The following table lists the configurable parameters of the Ansible AWX chart
and their default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| foo | bar  | baz     | foo to the bar |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm
install`. For example,

```console
$ helm upgrade --install awx-operator \
    awx-operator \
    --set persistence.enabled=false
```

The above command sets the the persistence storage to false.

Alternatively, a YAML file that specifies the values for the above parameters
can be provided while installing the chart. For example,

```console
$ helm upgrade --install awx-operator awx-operator -f values.yaml
```

> **Tip**: You can use the default [values.yaml](values.yaml)
