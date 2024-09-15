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

  # traffic {
  #   revision_name   = var.revision_name
  #   percent         = var.percent
  #   tag             = var.tag
  #   latest_revision = var.latest_revision
  # }
#   traffic {
#     revision_name   = var.new_revision_name
#     percent         = 0
#     tag             = var.new_revision_tag
#     latest_revision = var.new_revision_latest
#   }

#   traffic {
#     revision_name   = var.existing_revision_name
#     percent         = var.existing_percent
#     tag             = var.existing_tag
#     latest_revision = var.existing_latest_revision
#   }
}
