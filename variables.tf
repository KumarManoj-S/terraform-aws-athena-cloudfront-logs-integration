variable "database_name" {
    description = "The name of the database to be created."
    type = string
}
variable "s3_bucket_name" {
    description = "The name of the S3 log bucket."
    type = string
}
variable "cloudfront_logs_table_name" {
    default = "cloudfront_logs"
    description = "The name of the table to be created."
    type = string
}
variable "cloudfront_access_log_prefix" {
    description = "The S3 log bucket prefix for the logs."
    type = string
}
variable "queries" {
    type = list(object({
        name = string
        query = string
    }))
    default = []
    description = "The list of queries need to be saved in the athena query service."
}
variable "create_database" {
    type = bool
    default = true
    description = "Variable that decides the database creation. If false is passed, it will just use the database that is available already. If true is passed, it will create a new database."
}
