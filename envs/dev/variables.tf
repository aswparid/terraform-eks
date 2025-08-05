variable "cluster_role_arn" {

}
variable "node_role_arn" {

}
variable "subnet_ids" {
  type = list(string)
}
variable "aws_region" {
  description = "The AWS region to deploy into"
  type        = string
}
