{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "Generated.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "Generated.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "Generated.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create fqdn service name eg: rcm-admin-api.dev.svc.cluster.local
*/}}
{{- define "Generated.service.fqdn" -}}
{{- printf "%s.%s.svc.cluster.local" .Release.Name .Release.Namespace -}}
{{- end -}}

{{/*
Create service full name eg: rcm-admin-api.dev
*/}}
{{- define "Generated.service.fullname" -}}
{{- printf "%s.%s" .Release.Name .Release.Namespace -}}
{{- end -}}

{{/*
Create service name eg: rcm-admin-api
*/}}
{{- define "Generated.service.name" -}}
{{- printf "%s" .Release.Name -}}
{{- end -}}

{{/*
New Relic Name eg: rcm-admin-api:1.1.1010101
*/}}
{{- define "Generated.newrelic.name" -}}
{{- $tag := .Values.image.tag | toString -}}
{{- printf "%s" .Release.Name -}}
{{- end -}}

