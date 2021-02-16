output "cloudfront_logs_table_name" {
  value = aws_glue_catalog_table.cloudfront_logs_catalog_table.name
  description = "The name of the table created."
}
