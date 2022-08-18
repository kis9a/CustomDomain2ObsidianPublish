data "terraform_remote_state" "domains" {
  backend = "s3"

  config = {
    key     = "terraform-me.tfstate"
    bucket  = "kis9a-terraform-states"
    region  = "ap-northeast-1"
    profile = "kis9a"
    encrypt = true
  }
}
