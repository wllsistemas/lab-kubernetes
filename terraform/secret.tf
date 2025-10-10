resource "kubernetes_secret" "lab_secret" {
  metadata {
    name = "tf-lab-secret"
  }
  type = "Opaque"
  data = {
    DB_PASSWORD = "ZmlhcC0xMjM=" # 'fiap-123' em base64
    API_KEY     = "ZmlhcA=="     # 'fiap' em base64
  }
}