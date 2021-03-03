# Athena CloudFront logs integration

This is a tiny terraform module that enables the integration between
athena query service and the CloudFront logs collected in S3.

## List of things it does

- Create a database in athena query service.
- Create a table for CloudFront logs using the schema defined in the [aws
    doc](https://docs.aws.amazon.com/athena/latest/ug/cloudfront-logs.html#create-cloudfront-table)
  .
- Create the list of named queries given.

## Usage

```hcl
module "athena-cloudfront-logs-integration" {
  source = "KumarManoj-S/athena-cloudfront-logs-integration/aws"
  cloudfront_access_log_prefix = "cloudfront-logs"
  create_database = true
  database_name = "cloudfront_logs_db"
  queries = [
    {
      name = "my-first-query-name"
      query = "select * from cloudfront_logs limit 10;"
    },
    {
      name = "my-second-query-name"
      query = "select * from cloudfront_logs where status = 400 limit 5;"
    }
  ]
  s3_bucket_name = "s3-log-bucket"
}
```

## Inputs

| Name  | Description   | Type     | Default           | Required |
|-------|---------------|----------|-------------------|:--------:|
| s3_bucket_name  | S3 bucket name | `string` | - | Yes      |
| cloudfront_access_log_prefix  | S3 log prefix | `string` | - | Yes      |
| create_database  | Variable that decides db creation | `bool` | `true` | No      |
| cloudfront_logs_table_name  | Table name | `string` | `cloudfront_logs` | No      |
| database_name  | DB name | `string` | - | Yes    |
| queries  | list of queries need to be saved | `list(string)` | `[]` | No      |

## Outputs

| Name          | Description                     |
|---------------|---------------------------------|
| cloudfront_logs_table_name | The name of the table created |


## License

MIT Licensed. See LICENSE for full details. 