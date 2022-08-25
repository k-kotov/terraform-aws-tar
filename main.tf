data "external" "example" {
  program = ["bash", "script.sh"]
}

resource "random_id" "example" {
  keepers = {
    id = data.external.example.result["test"]
  }
  byte_length = 8
}
