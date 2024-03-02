# Creating a shell script on the fly
resource "local_file" "setenvvars" {
  filename = "./scripts/setenv.sh"
  content  = <<-EOT
    #!/bin/bash
    export OUTPUT='Hello ${var.random_input}'
    echo $OUTPUT
  EOT
  quiet = false
}
