resource "kubernetes_config_map" "php_app_config" {
  metadata {
    name = "tf-php-app-config"
  }

  data = {
    APP_ENV     = "lab-kubernetes"
    DB_HOST     = "localhost"
    APP_VERSION = "1.0.0"
  }
}