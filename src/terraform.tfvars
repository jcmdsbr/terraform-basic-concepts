  aws_region = "us-east-2"
  aws_credentials_file = "$HOME/.aws/credentials"
  aws_profile = "terraform"
  my_bucket_tags  = {
        Name = "__NAME_VALUE_TO_REPLACE_IN_CICD__"
        Environment = "__ENVIRONMENT_VALUE_TO_REPLACE_IN_CICD__"
  }