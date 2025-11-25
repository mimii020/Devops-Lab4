resource "docker_image" "postgres" {
  name = "postgres:latest"
}

resource "docker_container" "my-postgres" {
  image = docker_image.postgres.name
  name  = "postgres-container"
  env = ["POSTGRES_PASSWORD=${var.db_password}", "POSTGRES_USER=${var.db_user}", "POSTGRES_DB=${var.db_name}"]
  ports {
    internal = var.db_port
    external = var.db_port
  }
}

resource "docker_image" "web-app-image" {
  name = "my-nginx"
  build {
    path = "."
    tag = ["my-nginx:latest"]
  }
}

resource "docker_container" "web-app-container" {
  image = docker_image.web-app-image.name
  name = "web-app-container"
  ports {
    internal = 80
    external = 8080
  }
}