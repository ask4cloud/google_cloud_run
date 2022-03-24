variable "name"{
    type = string
    description = "Name of the google cloud run service"
}


variable "image"{
    type = string
    description = "Docker image name. Must be hosted in Google Container Registry or Artifact Registry."
}

variable "location" {
    type = string
    description = "Location of the service."
}


variable project {
  type = string
  description = "Google Cloud project in which to create resources."
}