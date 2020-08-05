provider "aws" {
  access_key = AWS_ACCESS_KEY
  region = "us-east-2"
  secret_key = AWS_SECRET_KEY
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