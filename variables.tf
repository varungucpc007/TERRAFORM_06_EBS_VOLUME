# variable "vpc_cidr_block" {
#   type        = string
#   description = "VPC CIDR block"
#   default     = "192.168.1.0/24"
# }

# variable "instance_tenancy" {
#   type        = string
#   description = "Instance tenancy for the VPC"
#   default     = "default"
# }

# variable "ebs_size" {
#   type        = number
#   description = "Size of the EBS volume in GB"
#   default     = 40
# }

# variable "ebs_availability_zone" {
#   type        = string
#   description = "Availability zone for the EBS volume"
#   default     = "ap-south-1a"
# }

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
    default     = "vpc-0503bf8a5d79248cb"
}
variable "cidr_block" {
    type        = string
    description = "The CIDR block for the subnet"
    default     = "10.0.1.0/25"
}