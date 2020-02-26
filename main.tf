provider "google" {
  credentials ="${file("service-account.json")}"
  project = "{{red-reference-267601}}"
  region  = "us-central1"
  zone    = "us-central1-c"
}
0 references
Source "google_compute_instance" "svc-1" {
  name         = "imam4082-testvm1"
  machine_type = "f1-micro"
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${google_compute_network.vpc_network.self_link}"
    access_cofig = {
      }
    }
  }

1 references
resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"       
  auto_create_subnetworks = "true"
  }

