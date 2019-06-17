variable "instance_tag" {}

resource "aws_instance" "small-server" {
  ami           = "${data.aws_ami.alpine-linux.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "${var.instance_tag}"
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