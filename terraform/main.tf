module "ssm_document" {
  source          = "./modules/ssm_document"
  name            = "ssm_document_sample"
  github_username = "teradatky"
  github_reponame = "ssm_document_sample"
  playbook_name   = "playbook.yml"
}
