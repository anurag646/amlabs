provider "aws" {
  region     = "us-east-1"
  access_key = var.key.access
  secret_key = var.key.value
}

resource "aws_instance" "myec" {
    ami = "ami-06b21ccaeff8cd686"
    instance_type = "t2.micro"
    count = 3
    tags = {
      Name = "Bastion-${count.index}"
    }
}
