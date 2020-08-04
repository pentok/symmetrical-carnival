variable env.AWS_ACCESS_KEY {
type = string
}
variable env.AWS_REGION {
type = string
}
variable env.AWS_SECRET_KEY {
type = string
}

provider "aws" {
  region     = env.AWS_REGION
  access_key = env.AWS_ACCESS_KEY
  secret_key = env.AWS_SECRET_KEY
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