variable "instance_details" {
  description = "A map of instance details including AMI IDs and instance names."
  type = map(object({
    ami = string
    name = string
  }))
  default = {
    server1 = { ami = "ami-00beae93a2d981137", name = "Server1-awsami" }
    server2 = { ami = "ami-080e1f13689e07408", name = "Server2-ubuntu" }
    server3 = { ami = "ami-0fe630eb857a6ec83", name = "Server3-redhat" }
  }
}


resource "aws_instance" "servers" {
  count         = length(keys(var.instance_details))
  ami           = values(var.instance_details)[count.index].ami
  instance_type = "t2.micro"

  tags = {
    Name = values(var.instance_details)[count.index].name
  }
}
