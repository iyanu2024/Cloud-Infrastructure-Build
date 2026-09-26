aws_region        = "us-east-1"
bucket_name       = "iyanu-demo-bucket-2026" # must be globally unique - change this
environment       = "dev"
enable_versioning = true
force_destroy     = true # handy for dev; set to false for prod

tags = {
  Owner     = "Iyanu"
  ManagedBy = "Terraform"
}