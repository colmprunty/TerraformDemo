resource "aws_instance" "small-server" {
  ami           = "${data.aws_ami.alpine-linux.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "Here is a Terraform demo"
  }
}

data "aws_ami" "alpine-linux" {
  most_recent = true
  owners      = ["538276064493"]

  filter {
    name   = "name"
    values = ["alpine-ami-3.9*"]
  }

}