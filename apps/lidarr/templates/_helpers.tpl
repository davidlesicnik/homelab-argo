{{- define "lidarr.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "lidarr.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "lidarr.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
