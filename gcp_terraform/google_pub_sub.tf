provider "google" {
  project = "my-project-id"
  region  = "us-central1"
}

resource "google_pubsub_topic" "topic" {
  count = 10000

  name = "topic-${count.index}"
  labels = {
    use = "auto_zone"
  }

  message_retention_duration = "86600s"
}
