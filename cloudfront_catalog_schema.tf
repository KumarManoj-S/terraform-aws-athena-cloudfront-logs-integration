locals {
  cloudfront_logs_table_columns = [
    {
      name = "date"
      type = "date"
    },
    {
      name = "time",
      type = "string",
    },
    {
      name = "location",
      type = "string",
    },
    {
      name = "bytes",
      type = "bigint",
    },
    {
      name = "request_ip",
      type = "string",
    },
    {
      name = "method",
      type = "string",
    },
    {
      name = "host",
      type = "string",
    },
    {
      name = "uri",
      type = "string",
    },
    {
      name = "status",
      type = "int",
    },
    {
      name = "referrer",
      type = "string",
    },
    {
      name = "user_agent",
      type = "string",
    },
    {
      name = "query_string",
      type = "string",
    },
    {
      name = "cookie",
      type = "string",
    },
    {
      name = "result_type",
      type = "string",
    },
    {
      name = "request_id",
      type = "string",
    },
    {
      name = "host_header",
      type = "string",
    },
    {
      name = "request_protocol",
      type = "string",
    },
    {
      name = "request_bytes",
      type = "bigint",
    },
    {
      name = "time_taken",
      type = "float",
    },
    {
      name = "xforwarded_for",
      type = "string",
    },
    {
      name = "ssl_protocol",
      type = "string",
    },
    {
      name = "ssl_cipher",
      type = "string",
    },
    {
      name = "response_result_type",
      type = "string",
    },
    {
      name = "http_version",
      type = "string",
    },
    {
      name = "fle_status",
      type = "string",
    },
    {
      name = "fle_encrypted_fields",
      type = "int",
    },
    {
      name = "c_port",
      type = "int",
    },
    {
      name = "time_to_first_byte",
      type = "float",
    },
    {
      name = "x_edge_detailed_result_type",
      type = "string",
    },
    {
      name = "sc_content_type",
      type = "string",
    },
    {
      name = "sc_content_len",
      type = "bigint",
    },
    {
      name = "sc_range_start",
      type = "bigint",
    },
    {
      name = "sc_range_end",
      type = "bigint",
    }
  ]
}