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
    token = "jN5cz-syACyY3Phwf6Dz"
}
resource "gitlab_project" "terraform1" {
  name        = "terraform1"
  description = "My terraform code"

  visibility_level = "public"
}

