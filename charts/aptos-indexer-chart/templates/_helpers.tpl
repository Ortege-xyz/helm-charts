# templates/_helpers.tpl

{{- define "aptos-indexer.name" -}}
{{- .Chart.Name | lower -}}
{{- end -}}

{{- define "aptos-indexer.fullname" -}}
{{- printf "%s-%s" (include "aptos-indexer.name" .) .Release.Name -}}
{{- end -}}

{{- define "aptos-indexer.labels" -}}
app.kubernetes.io/name: {{ include "aptos-indexer.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}