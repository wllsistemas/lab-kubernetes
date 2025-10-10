resource "kubernetes_service" "svc_nginx" {
  metadata {
    name = "svc-nginx"
  }

  spec {
    type = "NodePort"
    selector = {
      app = "lab-nginx" # Seleciona Pods com label app: lab-nginx
    }
    port {
      port        = 80    # Porta que o Service expõe internamente
      target_port = 80    # Porta na qual o container Nginx está escutando
      node_port   = 30000 # Porta que será aberta em CADA Node para acesso externo
    }
  }
}