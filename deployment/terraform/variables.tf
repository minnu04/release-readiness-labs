variable "ami_id" {
  description = "Pinned production AMI ID for the selected AWS region."
  type        = string
}

variable "instance_type" {
  description = "Production instance size."
  type        = string
  default     = "t3.small"
}

variable "release_version" {
  description = "Immutable release version deployed by this infrastructure."
  type        = string
}
