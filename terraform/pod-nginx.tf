resource "kubernetes_deployment" "lab_nginx" {
  metadata {
    name = "lab-nginx"
  }

  spec {
    selector {
      match_labels = {
        app = "lab-nginx"
      }
    }
    template {
      metadata {
        labels = {
          app = "lab-nginx"
        }
      }
      spec {
        container {
          name  = "lab-nginx"
          image = "wllsistemas/nginx:v6"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}