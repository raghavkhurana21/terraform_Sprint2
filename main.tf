resource "aws_instance" "web1" {

  for_each=var.forinstance
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

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
