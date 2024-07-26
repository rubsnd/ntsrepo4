provider "aws" {

  region = "us-east-1"

}


resource "aws_vpc" "dep1" {
    cidr_block = "192.168.0.0/16"
    tags = {
      "Name" = "VPC1"
      
    }
    depends_on = [ aws_vpc.dep3 ]
  
}
resource "aws_vpc" "dep2" {
    cidr_block = "192.169.0.0/16"
    tags = {
      "Name" = "VPC2"
      
    }
    depends_on = [ aws_vpc.dep3 ]
  
}
resource "aws_vpc" "dep3" {
    cidr_block = "192.170.0.0/16"
    tags = {
      "Name" = "VPC3"
      
    }
    depends_on = [ aws_vpc.dep4 ]
  
}
resource "aws_vpc" "dep4" {
    cidr_block = "192.171.0.0/16"
    tags = {
      "Name" = "VPC4"
      
    }
  
}
