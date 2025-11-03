{{- define "qbittorrent.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "qbittorrent.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "qbittorrent.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
