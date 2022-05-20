resource "aws_instance" "si-web-server" {
  ami           = "ami-0c1bc246476a5572b"
  instance_type = "t2.micro"

  security_groups = [ aws_security_group.ssh-allow-all.name ]

  tags = {
    Name = "SportsInteractiveWebServer"
  }
}