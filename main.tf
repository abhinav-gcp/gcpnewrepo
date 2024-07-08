provider "google" {
  project = "amplified-asset-426508-e7"
  zone    = "us-central1-a"
}

resource "google_container_cluster" "my_gke_cluster" {
  name     = "my-gke-cluster"
  location = "us-central1-a"

  node_pool {
    name       = "my-node-pool"
    node_count = 1
  }
}
