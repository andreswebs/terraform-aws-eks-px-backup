output "namespace" {
  value       = var.k8s_namespace
  description = "The name (`metadata.name`) of the namespace"
}

output "release" {
  description = "Helm release"
  value = helm_release.this
}
