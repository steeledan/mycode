terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}
#Welcome to Docker Containers
provider "docker" {}

//Resource 1
resource "docker_image" "nginx" {
  name         = "nginx:1.19.6"
  keep_locally = true    // keep image after "destroy"
}
/*resource list
here*/
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 2224
  }
}

