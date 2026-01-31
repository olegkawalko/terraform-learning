

resource "aws_subnet" "pub1"{

    vpc_id=var.vpc_id
    cidr_block =var.publi_subnet_cidrs[0]
    availability_zone =var.azs[0]
    map_public_ip_on_launch = true
    tags = {
        name = "${var.name_prefix}-public-${var.azs[0]}"
    }
}
resource "aws_subnet" "pub2"{

    vpc_id=var.vpc_id
    cidr_block=var.publi_subnet_cidrs[1]
    availability_zone =var.azs[1]
    map_public_ip_on_launch=true
    tags ={
        name="${var.name_prefix}-public-${var.azs[1]}"
    }
}
