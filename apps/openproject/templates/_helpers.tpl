{{- define "openproject.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "openproject.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "openproject.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
