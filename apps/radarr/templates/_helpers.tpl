{{- define "radarr.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "radarr.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "radarr.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
