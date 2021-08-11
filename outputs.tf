output "namespace" {
  value       = helm_release.this.metadata[0].namespace
  description = "The name (`metadata.name`) of the namespace"
}

output "release" {
  value = helm_release.this
  description = "Helm release"
}
