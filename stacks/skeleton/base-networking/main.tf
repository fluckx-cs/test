locals {
  uuid = uuid()
}

resource "local_file" "test-file" {
  filename = "debug.txt"
  content = <<CONTENT
${timestamp()}: This is a debug file containing some text!
${timestamp()}: It has a unique ID: ${local.uuid}
CONTENT
}

output "vpc_id" {
  value = "vpc-abcd1234"
}

output "subnet_list" {
  value = [
    "subnet-abcd1234",
    "subnet-abcd5678",
    "subnet-abcd9012",
  ]
}

output "file_content" {
  value = local_file.test-file.content
}

output "uuid" {
  value = local.uuid
}
