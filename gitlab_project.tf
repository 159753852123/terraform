terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "3.7.0"
    }
  }
}
# Configure the GitLab Provider
provider "gitlab" {
    token = ""
}
resource "gitlab_project" "terraform1" {
  name        = "terraform1"
  description = "My terraform project"

  visibility_level = "public"
}

