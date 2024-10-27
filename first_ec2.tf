provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWL5MVQJUYSG5MKAD"
  secret_key = "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"
}

resource "aws_instance" "myec" {
    ami = "ami-06b21ccaeff8cd686"
    instance_type = "t2.micro"
    count = 3
#    tags = {
#     Name = "Bastion-${count.index}"
}
