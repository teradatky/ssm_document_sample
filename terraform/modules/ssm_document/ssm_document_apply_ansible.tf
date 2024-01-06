resource "aws_ssm_document" "ansible" {
  name            = join("-", [var.name, "apply-ansible"])
  document_type   = "Command"
  document_format = "YAML"
  target_type     = "/AWS::EC2::Instance"
  content = templatefile("${path.module}/template_apply_ansible.yml",
    {
      git_repository_url = "https://github.com/teradatky/ssm_document_sample"
      playbook_file      = "provisioning.yml"
    }
  )
}
