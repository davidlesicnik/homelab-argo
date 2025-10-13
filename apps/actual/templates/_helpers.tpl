{{- define "actual-budget.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "actual-budget.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "actual-budget.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
