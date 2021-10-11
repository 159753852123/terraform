provider "aws" {
  access_key = "AKIA3SRTWX7FY4DHPT6Q"
  secret_key = "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"
  region = "us-east-2"
}
resource "aws_instance" "ubuntu" {
  count = 3
  ami   = "ami-000102dbe3fd021c3"
  instance_type = "t2.micro"
}
