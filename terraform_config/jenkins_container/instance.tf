resource "docker_image" "jenkins" {
    name = "jenkins/jenkins:2.60.3"
}

resource "docker_container" "jenkins" {
    image = docker_image.jenkins.image_id
    name = "jenkins"
    ports {
        internal = 8080
        external = 5000
    }
}
