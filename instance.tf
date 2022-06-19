
 



  resource "aws_instance" "first" {
   ami  = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${aws_key_pair.first-tfkey.key_name}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  user_data = file("${path.module}/script.sh")


   tags = {
    Name = "first-tf-instance"
   }
  #  connection {
  #       type = "ssh"
  #       user = "ubuntu"
  #       private_key = file("${path.module}/id_rsa")
  #       host = "${self.public_ip}"
  #     }
     
    # provisioner "file" {
    #   source = "readme.md"
    #   destination = "/tmp/readme.md"
      
    # }
    #  provisioner "file" {
    #   content = "Hi this is sinha"
    #   destination = "/tmp/content.md"
    #  }

    #   provisioner "local-exec" {
    #     command = "echo ${self.public_ip} > /tmp/mupublic.txt"
    #   }

    #   provisioner "local-exec" {
    #     on_failure = continue
    #     command = "env>env.txt"
    #     environment = {
    #       envname = "envvalue"
    #      }
    #   }

    #   provisioner "local-exec" {
    #     command = "echo 'at create'"
    #      }
    #      provisioner "local-exec" {
    #        when = destroy
    #     command = "echo 'at delete'"
        #  }

        #  provisioner "remote-exec" {
        #    inline = [
        #      "ifconfig > /tmp/ifconfig.output",
        #      "echo 'hello ashu'>/tmp/test.txt"
        
        #    ]
           
        #  }
        #   provisioner "remote-exec" {
        #    script = "./testscript.sh"
        
           
           
    #      }
         
          
    
    # }
 
 


  #ingress {
   # description      = "TLS from VPC"
    #from_port        = 22
    #to_port          = 22
    #protocol         = "tcp"
    #cidr_blocks      = ["0.0.0.0/0"]
    
  #}
#ingress {
 #   description      = "TLS from VPC"
  #  from_port        = 80
   # to_port          = 80
    #protocol         = "tcp"
    #cidr_blocks      = ["0.0.0.0/0"]

  #}
#ingress {
 #   description      = "TLS from VPC"
  #  from_port        = 3306
   # to_port          = 3306
    #protocol         = "tcp"
    #cidr_blocks      = ["0.0.0.0/0"]

  #}


  #tags = {
   # Name = "allow_tls"
  #}
}
resource "aws_instance" "second" {
   ami  = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${aws_key_pair.first-tfkey.key_name}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  user_data = file("${path.module}/script.sh")


   tags = {
    Name = "second-tf-intance"
   }
}
