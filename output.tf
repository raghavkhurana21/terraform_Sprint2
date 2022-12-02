output "Output-Block-1" {

    # value = aws_instance.web1.tags["Name"]
    value= [for i in var.forinstance: i["Name"]]

    description = "aws instances created"

}

output "Output-Block-2" {

    # value = aws_s3_bucket.buckets3.bucket
    value= [for i in var.bucketname: i]

    description = "S3 bucket created"

}