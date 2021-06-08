terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
  required_version = ">= 0.13"
  backend "s3" {
    profile = "morphy771"
    region  = "eu-west-1"
    key     = "terraform.tfstate"
    bucket  = "asg-tf-course-state-backend"
  }
}
