provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-2"
}
resource "aws_instance" "ubuntu" {
  count = 3
  ami   = "ami-000102dbe3fd021c3"
  instance_type = "t2.micro"
}
