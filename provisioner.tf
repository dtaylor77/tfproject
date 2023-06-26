# # Provisioners

#  provisioner "local-exec" {
#     command = "echo ${self.public_ip} > /tmp/InstanceIP.txt"
#   }

# file provisioner

# Provisioners

#  provisioner "file" {
#     source      = "index.html"
#     destination = "/tmp/index.html"
#   }
