output "db_container_name" {
 description = "Nom du conteneur de la base de données."
 value = docker_container.my-postgres.name
}
output "app_access_url" {
 description = "URL d'accès à l'application web."
 value = "http://localhost:${docker_container.web-app-container.ports[0].external}"
}
