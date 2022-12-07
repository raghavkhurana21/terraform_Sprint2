variable "forinstance"{
    type=map(any)
}
variable "bucketname"{
    type=list(string)
}
variable "ec2ami"{
    type=string
}
variable "ec2type"{
    type=list(string)
}
variable "s3_tag"{
    type =map(any)
}