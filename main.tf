resource "aws_instance" "web1" {

  for_each=var.forinstance
  ami           = var.ec2ami
  instance_type = var.ec2type

  tags = {
    Name =each.value["Name"]
    Owner=each.value["Owner"]
    Purpose =each.value["Purpose"]
  
  }
}

resource"aws_s3_bucket" "buckets3"{
    count=length(var.bucketname) 
    bucket=var.bucketname[count.index]  
    # acl="private"   
    #region="ap-south-1"
    tags = {
      Owner="raghav"
      Purpose ="training"
  
  }
}        
