
 terraform {
    backend "s3"{
        bucket="raghav-tf-bucket"
        key="terraform.tfstate"
        region="ap-south-1"
        dynamodb_table = "raghav-tf-table"
    }
}