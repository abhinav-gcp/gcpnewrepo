provider "google" {
  project = var.project_id
  zone    = var.zone
}

resource "google_container_cluster" "my_gke_cluster" {
  name     = var.cluster_name
  location = var.zone

  node_pool {
    name       = "my-node-pool"
    node_count = 1

    node_config {
      machine_type = "e2-medium"
    }
  }
}
