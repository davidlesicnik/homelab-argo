{{- define "prowlarr.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "prowlarr.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "prowlarr.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
