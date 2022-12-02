#========================================================================
// Dynamodb setup
#========================================================================

resource "aws_dynamodb_table" "visitors" {
  name           = "counter_table"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

}

// Create DynamoDB Item #1
resource "aws_dynamodb_table_item" "item" {
  table_name = aws_dynamodb_table.visitors.name
  hash_key   = aws_dynamodb_table.visitors.hash_key
  item       = <<ITEM
 {
    "id": {"S": "0"},
    "count": {"N": "1"}
}
ITEM
}
