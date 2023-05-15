provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAU3264JPBNUIJ2KEV"
  secret_key = "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"
}

resource "aws_instance" "rakesh_instance" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"

  tags = {
    Name = "rakesh_ec2_instance"
  }
}

output "rakesh_instance_ip" {
  value = aws_instance.rakesh_instance.public_ip
}

output "rakesh_instance_private-ip" {
  value = aws_instance.rakesh_instance.private_ip
}

