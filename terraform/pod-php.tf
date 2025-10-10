resource "kubernetes_deployment" "lab_php" {
  metadata {
    name = "lab-php"
  }

  spec {
    selector {
      match_labels = {
        app = "lab-php"
      }
    }
    template {
      metadata {
        labels = {
          app = "lab-php"
        }
      }
      spec {
        container {
          name  = "lab-php"
          image = "wllsistemas/php_8_3_fpm:${var.php_image_tag}"
          port {
            container_port = 9000
          }
          env {
            name = "KUBERNETES_APP_ENV"
            value_from {
              config_map_key_ref {
                name = "tf-php-app-config"
                key  = "APP_ENV"
              }
            }
          }
          env {
            name = "KUBERNETES_DB_HOST"
            value_from {
              config_map_key_ref {
                name = "tf-php-app-config"
                key  = "DB_HOST"
              }
            }
          }
          env {
            name = "DATABASE_PASSWORD"
            value_from {
              secret_key_ref {
                name = "tf-lab-secret"
                key  = "DB_PASSWORD"
              }
            }
          }
          env {
            name = "EXTERNAL_API_KEY"
            value_from {
              secret_key_ref {
                name = "tf-lab-secret"
                key  = "API_KEY"
              }
            }
          }
        }
      }
    }
  }
}