provider "aws" {
  region = "us-east-1"  # 필요에 따라 변경
}

# 간단한 EC2 인스턴스 생성
resource "aws_instance" "test" {
  ami           = "ami-04b3f91ebd5bc4f6d"
  instance_type = "t2.micro"
  
  tags = {
    Name = "terraform-test-instance"
    Environment = "test"
  }
}

# 출력 값
output "instance_id" {
  value = aws_instance.test.id
}

output "public_ip" {
  value = aws_instance.test.public_ip
}
