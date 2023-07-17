terraform {
	required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~> 4.20.0"
	}
    }
required_version = "~> 1.5.0"
}

provider "aws" {
	region = "us-east-1"
	}

resource "aws_s3_bucket" "bucket_23" {
	bucket = "170723Devbackup"
	versioning {
	enabled = true
	}

	server_side_encryption_configuration {
	rule {
	apply_server_side_encryption_by_default {
	sse_algorithm = "AES256"
	} 
     }
  }
}
