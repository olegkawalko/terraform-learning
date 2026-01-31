resource "aws_vpc" "vpc_original"{
    cidr_block=var.cidr_block_id
    tags = {
        Name="moje-vpc"
    }
}

output "vpc_original_output"{

    value = aws_vpc.vpc_original.id
}