variable "name" {
  type        = string
  description = "リソースに付与するプレフィックス"
}

variable "github_username" {
  type        = string
  description = "GitHubのユーザー名"
}

variable "github_reponame" {
  type        = string
  description = "GitHubのリポジトリ名"
}

variable "playbook_name" {
  type        = string
  description = "AnsibleのPlaybook名"
}
