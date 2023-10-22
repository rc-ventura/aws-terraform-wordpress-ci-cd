# RDS wordpress
#----------------------------------------
variable "db_allocated_storage" {
  type        = number
  description = "db allocated storage"
  default     = 20
}
variable "db_max_allocated_storage" {
  type        = number
  description = "wordpress db max allocated storage"
  default     = 500
}
variable "db_name" {
  type        = string
  description = "wordpress db name"
}
variable "db_instance_class" {
  type        = string
  description = "wordpress db instance type"
  default     = "db.t2.micro"
}
variable "db_username" {
  type        = string
  description = "wordpress db username"
  sensitive   = true
}
variable "db_password" {
  type        = string
  description = "wordpress db password"
  sensitive   = true
}
variable "db_engine" {
  type        = string
  description = "wordpress db engine"
  default     = "mysql"
}
variable "db_engine_version" {
  type        = string
  description = "wordpress db engine version"
  default     = "8.0.32"
}
variable "db_publicly_accessible" {
  type        = bool
  description = "wordpress db publicly accessible"
  default     = false
}
variable "db_deletion_protection" {
  type        = bool
  description = "wordpress db deletion protection"
  default     = false
}
variable "db_skip_final_snapshot" {
  type        = bool
  description = "skip final snapshot"
  default     = true
}