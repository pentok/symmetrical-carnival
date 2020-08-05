provider "aws" {
  access_key = "AKIAYJ4HKGAKJLSRV4PI"
  region = "us-east-2"
  secret_key = "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"
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
    name     = "testtable"
    read_capacity = 5
    write_capacity = 5
    hash_key = "ID"

    attribute {
      name = "ID"
      type = "S"
    }


  
}