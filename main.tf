provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
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