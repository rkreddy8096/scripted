resource "null_resource" "webprovisoner" {
  provisioner "remote-exec" {

      connection {
        type        = "ssh"
        user        = "jenkins"
        password    = "jenkins"
        port        = 22
        host        = "localhost"
      }

      inline = [
        "sudo apt update",
        "sudo apt install apache2 -y"
        "ok"
       ]
    }
}
