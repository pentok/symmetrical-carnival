provider "aws" {
  region     = AWS_REGION
  access_key = AWS_ACCESS_KEY
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