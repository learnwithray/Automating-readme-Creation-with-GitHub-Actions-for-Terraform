resource "google_cloud_run_service" "cloud_run_service" {
  name     = var.service_name
  location = var.region
  project  = var.project_id

  template {
    metadata {
      annotations = {
        "autoscaling.knative.dev/minScale" = tostring(var.min_instance_count)
        "autoscaling.knative.dev/maxScale" = tostring(var.max_instance_count)
      }
    }
    spec {
      containers {
        name  = var.containers_name
        image = var.image
        ports {
          container_port = var.container_port
        }
        resources {
          limits = {
            cpu    = var.cpu
            memory = var.memory
          }
        }
        env {
          name  = "ENV_VAR"
          value = var.env_var_value
        }
      }
    }
  }
}
