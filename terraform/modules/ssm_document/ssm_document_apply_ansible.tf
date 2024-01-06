resource "aws_ssm_document" "main" {
  name            = join("-", [var.name, "apply-ansible"])
  document_type   = "Command"
  document_format = "YAML"
  target_type     = "/AWS::EC2::Instance"
  content = templatefile("${path.module}/template_apply_ansible.yml",
    {
      github_username = "teradatky"
      github_reponame = "ssm_document_sample"
      playbook_name   = "playbook.yml"
    }
  )
}
