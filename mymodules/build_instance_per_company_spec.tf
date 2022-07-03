resource "aws_instance" "machine" {
  ami           = "ami-080af029940804103"
  instance_type = "t2.micro"
  count         = var.instance_count
  key_name      = "terraform22"

  user_data =   file(element(var.modulescripts,count.index))

  tags = {
      Name = var.node_name[count.index]
      environment = var.environment
  }
}
