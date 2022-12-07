forinstance={
    1={
        "Name"="Raghav_1_tf"
        "Owner"="Raghav1"
        "Purpose"="training_1"

    }
    2={
         "Name"="Raghav_2_tf"
        "Owner"="Raghav2"
        "Purpose"="training_2"

    }
    3={
         "Name"="Raghav_3_tf"
        "Owner"="Raghav3"
        "Purpose"="training_3"
    }
}
bucketname=["raghav_bucket-1","raghav_buckettf-2"]

ec2ami="ami-074dc0a6f6c764218"

ec2type="t2.micro"

s3_tag = {
  "owner" = "raghav"
  "purpose" = "training"
}