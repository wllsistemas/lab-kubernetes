resource "kubernetes_horizontal_pod_autoscaler_v2" "hpa_nginx" {
  metadata {
    name = "hpa-nginx"
  }

  spec {
    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = "lab-nginx"
    }
    min_replicas = 1
    max_replicas = 10

    metric {
      type = "Resource"
      resource {
        name = "cpu"
        target {
          type               = "Utilization"
          average_utilization = 10
        }
      }
    }

    metric {
      type = "Resource"
      resource {
        name = "memory"
        target {
          type          = "AverageValue"
          average_value = "2Mi"
        }
      }
    }
  }
}
