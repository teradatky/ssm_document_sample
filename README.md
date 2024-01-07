# ssm_document_sample

SSM ドキュメントを利用し、EC2 をプロビジョニング（ここではホスト名の変更）するサンプル

解説記事 [AWS Systems Manager ドキュメント (SSM ドキュメント) で EC2 をプロビジョニング](https://zenn.dev/teradatky/articles/ssmdocument-ec2-provisoining-20240107)

## 前提条件

Session Manager が接続可能な EC2 が存在すること

[Session Manager のセットアップ](https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/session-manager-getting-started.html)

## リソース作成

以下コマンドを実行する

```bash
git clone https://github.com/teradatky/ssm_document_sample.git
cd ssm_document_sample/terraform
terraform init
terraform plan
terraform apply
```

## 実行方法

マネジメントコンソールから作成された SSM ドキュメント（デフォルトでは `ssm_document_sample-apply-ansible` ）を選択し、実行する
