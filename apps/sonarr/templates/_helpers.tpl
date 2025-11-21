{{- define "sonarr.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sonarr.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "sonarr.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
