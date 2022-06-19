resource "aws_key_pair" "first-tfkey" {
   key_name   = "first-tfkey"
   public_key = file("${path.module}/id_rsa.pub")

}

 output "keyname" {
 value =  "${aws_key_pair.first-tfkey.key_name}"
}


