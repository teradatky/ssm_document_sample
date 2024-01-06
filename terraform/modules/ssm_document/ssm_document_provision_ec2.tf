resource "aws_ssm_document" "provision_ec2" {
  name            = join("-", [var.name, "provision-ec2"])
  document_type   = "Automation"
  document_format = "YAML"
  target_type     = "/AWS::EC2::Instance"
  content = templatefile("${path.module}/template_provision_ec2",
    {
      sg_id              = aws_security_group.ec2.id
      role_name          = aws_iam_role.ec2.name
      apply_ansible_name = aws_ssm_document.ansible.name
    }
  )
}
