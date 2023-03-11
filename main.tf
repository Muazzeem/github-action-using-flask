provider "google" {
  project = "saifuls-playground"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_vpc_access_connector" "default" {
  name          = "serverless-vpc-connector"
  network       = "projects/${var.project}/global/networks/default"
  ip_cidr_range = "10.8.0.0/28"
}

resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_sql_database_instance" "instance" {
  provider = google-beta
  project  = var.project

  name             = "private-instance-${random_id.db_name_suffix.hex}"
  region           = "us-central1"
  database_version = "POSTGRES_14"
  root_password    = var.db_pass

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled    = false
      private_network = "projects/${var.project}/global/networks/default"

      enable_private_path_for_google_cloud_services = true
    }
  }
}
output "db_info" {
  value     = google_sql_database_instance.instance.name
}

