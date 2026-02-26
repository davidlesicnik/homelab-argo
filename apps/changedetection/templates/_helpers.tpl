{{- define "changedetection.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "changedetection.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "changedetection.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
