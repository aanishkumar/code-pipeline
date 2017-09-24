variable "namespace" {
  default = "alby"
}

variable "stage" {
  default = "pipeline"
}

variable "name" {
  default = "helloworld"
}

variable "enabled" {
  default = 1
}

variable "app" {
  default = "helloworld"
}

variable "env" {
  default = "dev"
}

variable "github_oauth_token" {
  default = "<your git token>"
}

variable "repo_owner" {
  default = "<owner>"
}

variable "repo_name" {
  default = "code-pipeline"
}

variable "branch" {
  default = "master"
}

variable "build_image" {
  default = "aws/codebuild/docker:1.12.1"
}

variable "build_instance_size" {
  default = "BUILD_GENERAL1_SMALL"
}
variable "AWS_REGION" {
  default = "eu-west-1"
}