variable "instance_type" {
  type        = string
  description = "EC2 Instance Type"
}

variable "common_tags" {
  type        = map(string)
  description = "The list of common tags"
}

variable "sg_name" {
  type        = string
  description = "The name of the Security Group"
}

variable "sg_description" {
  type        = string
  description = "The description of the Security Group"
}

variable "sg_inbound_rules" {
  type = list(object({
    description = string,
    from_port   = number,
    to_port     = number,
    protocol    = string,
    cidr_blocks = list(string)
  }))
  description = "The ingres values of the Security Group"
}