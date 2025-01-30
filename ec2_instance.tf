resource "aws_instance" "web" {
  ami           = "ami-0f34c5ae932e6f0e4" # Replace with the desired AMI ID for your region
  instance_type = "t2.micro"              # Replace with the desired instance type

  tags = {
    Name = "MyEC2Instance" # Replace with your desired instance name
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              service httpd start
              echo "<html><body><h1>Hello from Terraform EC2</h1></body></html>" > /var/www/html/index.html
              EOF
}

resource "aws_instance" "web2" {
  ami           = "ami-0f34c5ae932e6f0e4" # Specify the desired AMI
  instance_type = "t2.micro"              # Specify the instance type
  tags = {
    Name = "web-server" # Replace with your desired instance name
  }
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              service httpd start
              echo "<html><body><h1>Hello from Terraform EC2 Instance 2</h1></body></html>" > /var/www/html/index.html
              EOF

}

resource "aws_instance" "web3" {
  ami           = "ami-0230bd60aa48260c6" # Replace with the desired AMI ID for your region
  instance_type = "t2.micro"
  key_name = "linux-server-new.pem"
  vpc_security_group_ids = ["sg-0d0ac027dc2a538fa"]
  tags = {
    Name = "linux-instance-new" # Replace with your desired instance name
  }

}

terraform {
  backend "s3" {
    bucket = "demo-terraform-s3-backend-srish-check" # Replace with your S3 bucket name
    key    = "terraform.tfstate"
    region = "us-east-1" # Replace with your desired AWS region
  }
}
