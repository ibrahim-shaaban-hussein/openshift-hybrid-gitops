# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example Amazon Linux AMI
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

# Output the instance public IP
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

