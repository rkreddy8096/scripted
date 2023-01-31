resource "null_resource" "webprovisoner" {
  provisioner "remote-exec" {

      connection {
        type        = "ssh"
        user        = "jenkins"
        password    = "jenkins"
        port        = 22
        private_key = file("~/.ssh/id_rsa")
        host        = self.public_ip
      }
      
      inline = [
        "sudo apt update",
        "sudo apt install apache2 -y",
        "sudo systemctl start apache2",
        "sudo systemctl enable apache2"
      ]
    }
}