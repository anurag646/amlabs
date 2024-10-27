provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_value
}

resource "aws_instance" "myec" {
    ami = "ami-06b21ccaeff8cd686"
    instance_type = "t2.micro"
    count = 4
    tags = {
      Name = "Bastion-${count.index}"
    }
}
