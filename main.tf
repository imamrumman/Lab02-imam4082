
provider "google" {
  credentials ="${file("service-account.json")}"
  project = "{{red-reference-267601}}"
  region  = "us-central1"
  zone    = "us-central1-c"
}


Source "google_compute_instance" "svc-1" {
  name         = "imam4082-testvm1"
  machine_type = "f1-micro"
  zone         = "us-central1-c"
