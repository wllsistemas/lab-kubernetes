resource "kubernetes_namespace" "lab" {
  metadata {
    name = "tf-namespace"
  }
}