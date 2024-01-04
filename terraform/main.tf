module "ssm_document" {
  source        = "./modules/ssm_document"
  name          = "ssm_document_sample"
  sg_allowed_ip = "0.0.0.0/0"
}
