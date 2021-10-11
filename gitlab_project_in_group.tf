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
resource "gitlab_group" "terraform3" {
  name        = "terraform3"
  path        = "terraform3"
  description = "terraform3 group"
}
# Create a project in the terraform3 group
resource "gitlab_project" "terraform4" {
  name         = "terraform4"
  description  = "terraform4 project"
  namespace_id = gitlab_group.example.id
}
