{{- define "wg-easy.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "wg-easy.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "wg-easy.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
