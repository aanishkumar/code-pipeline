resource "aws_dynamodb_table" "alby-dev" {
  name           = "ProductInfo"
  read_capacity  = 2
  write_capacity = 2
  hash_key       = "Id"
  range_key      = "Price"

  attribute {
    name = "Id"
    type = "S"
  }

  attribute {
    name = "Price"
    type = "S"
  }

  attribute {
    name = "Name"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled = false
  }

  global_secondary_index {
    name               = "PriceIndex"
    hash_key           = "Price"
    range_key          = "Name"
    write_capacity     = 2
    read_capacity      = 2
    projection_type    = "INCLUDE"
    non_key_attributes = ["Id"]
  }

  tags {
    Name        = "alby-dev"
    Environment = "dev"
  }
}