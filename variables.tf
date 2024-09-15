#### Generic Variables
variable "project_id" {
  description = "The GCP project ID."
  default     = "burner-mansaini"
}
variable "region" {
  description = "The name of the Cloud Run service."
  default     = "us-central1"
}

#### Cloud run service variables
variable "service_name" {
  description = "The name of the Cloud Run service."
  type        = string
}

variable "containers_name" {
  description = "The name of the container."
  type        = string
}

variable "image" {
  description = "The container image to deploy."
  type        = string
}

variable "container_port" {
  description = "The port on which the container listens."
  type        = number
}

variable "cpu" {
  description = "The CPU limit for the container."
  type        = string
}

variable "memory" {
  description = "The memory limit for the container."
  type        = string
}

variable "env_var_value" {
  description = "The value of the environment variable."
  type        = string
}

variable "min_instance_count" {
  description = "The minimum number of container instances."
  type        = number
}

variable "max_instance_count" {
  description = "The maximum number of container instances."
  type        = number
}