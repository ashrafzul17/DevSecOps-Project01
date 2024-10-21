provider "aws" {

  region = "eu-west-2" # London region

}

resource "aws_s3_bucket" "bucket-2110" {

  bucket = "bucket-2110"

}
terraform {

  backend "s3" {

    # Replace this with your bucket name!
    bucket         = "bucket-2110"

    region         = "eu-west-2"
  }
}

resource "aws_instance" "project-2110" {

  ami           = "ami-0903ff18cc3c8e341" # Replace with the desired Amazon Linux 2 AMI for eu-west-2 (bitnami image)
  instance_type = "t2.micro"  # Change to the desired instance type

  tags = {
    Name = "project-211024"
  }
}
