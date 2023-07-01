module "shell_execute" {
  source  = "github.com/matti/terraform-shell-resource"
  command = "./scripts/setenv.sh"
}

# Creating a shell script on the fly
resource "local_file" "setenvvars" {
  filename = "./scripts/setenv.sh"
  content  = <<-EOT
    #!/bin/bash
    export OUTPUT='Hello ${var.random_input}'
    echo $OUTPUT
    gcloud --version
  EOT
}
