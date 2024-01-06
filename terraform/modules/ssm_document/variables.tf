variable "name" {
  type        = string
  description = "各リソースに付与するプレフィックス"
}

variable "sg_allowed_ip" {
  type        = string
  description = "作成するセキュリティグループで許可するIPアドレス"
}

variable "vpc_id" {
  type        = string
  description = "セキュリティグループを作成するVPCのID"
}
