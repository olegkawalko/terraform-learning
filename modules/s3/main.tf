data "aws_s3_bucket" "s3_exist"{
    bucket = var.bucket_buck
}

resource "aws_s3_bucket" "s3"{

    bucket = "s3-92332"
    tags = {Name = data.aws_s3_bucket.s3_exist.bucket}
}