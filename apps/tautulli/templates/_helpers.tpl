{{- define "tautulli.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "tautulli.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "tautulli.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
