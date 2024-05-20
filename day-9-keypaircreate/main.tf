resource "aws_key_pair" "nikki" {
    key_name = "public"
    public_key = file("~/.ssh/id_ed25519.pub")
  
}

resource "aws_instance" "ashk" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = aws_key_pair.nikki.key_name
    tags = {
      Name = "arjun"
    }
  
}