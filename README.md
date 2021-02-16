# athena-cloudfront-logs-integration

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
  source = "github.com/KumarManoj-S/athena-cloudfront-logs-integration"
  cloudfront_access_log_prefix = "cloudfront-logs"
  create_database = true
  database_name = "cloudfront_logs_db"
  queries = ["select * from cloudfront_logs limit 10;"]
  s3_bucket_name = "s3-log-bucket"
}
```

## Inputs

| Name  | Description   | Type     | Default           | Required |
|-------|---------------|----------|-------------------|:--------:|
| s3_bucket_name  | S3 bucket name | `string` | - | yes      |
| cloudfront_access_log_prefix  | S3 log prefix | `string` | `cloudfront_logs` | No      |
| create_database  | Variable that decides db creation | `bool` | `true` | No      |
| database_name  | DB name | `string` | - | Yes if `create_database` is `false`      |
| queries  | list of queries need to be saved | `list(string)` | `[]` | No      |

## Outputs

| Name          | Description                     |
|---------------|---------------------------------|
| cloudfront_logs_table_name | The name of the table created |
