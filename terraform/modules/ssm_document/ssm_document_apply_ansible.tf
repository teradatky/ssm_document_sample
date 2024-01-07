resource "aws_ssm_document" "main" {
  name            = join("-", [var.name, "apply-ansible"])
  document_type   = "Command"
  document_format = "YAML"
  target_type     = "/AWS::EC2::Instance"
  content = templatefile("${path.module}/template_apply_ansible.yml",
    {
      github_username = var.github_username
      github_reponame = var.github_reponame
      playbook_name   = var.playbook_name
    }
  )
}
