variable "database_name" {}
variable "s3_bucket_name" {}
variable "cloudfront_logs_table_name" {
    default = "cloudfront_logs"
}
variable "cloudfront_access_log_prefix" {}
variable "queries" {
    type = list(string)
}
variable "create_database" {
    type = bool
}
