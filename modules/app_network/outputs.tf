output "subnet_list_id"{
    value =[ 
        aws_subnet.pub1.id,
        aws_subnet.pub2.id,
    ]
}
output "subnet_list_arn"{
    value=[
        aws_subnet.pub1.arn,
        aws_subnet.pub2.arn,
    ]
}
