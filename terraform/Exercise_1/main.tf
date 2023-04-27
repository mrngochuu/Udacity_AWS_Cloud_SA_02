# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  profile = "mrngochuu"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  count = 4
  tags = {
    Name = "Udacity_T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  ami = "ami-007855ac798b5175e"
  instance_type = "m4.large"
  count = 2
  tags = {
    Name = "Udacity_M4"
  }
}
