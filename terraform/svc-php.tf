resource "kubernetes_service" "svc_php" {
  metadata {
    name = "svc-php"
  }

  spec {
    type = "ClusterIP"
    selector = {
      app = "lab-php"
    }
    port {
      port        = 9000 # Porta que o Service expõe internamente
      target_port = 9000 # Porta na qual o container PHP-FPM está escutando
    }
  }
}