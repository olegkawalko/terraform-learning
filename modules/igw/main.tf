resource "aws_internet_gateway" "igw"{

    vpc_id = var.vpc_id
}

resource "aws_route_table" "route_tab"{
    vpc_id = var.vpc_id
    route {
        cidr_block = var.cidr_block_v
        gateway_id = aws_internet_gateway.igw.id

    }
depends_on = [aws_internet_gateway.igw]
}
resource "aws_route_table_association" "route_table_pub1"{
    subnet_id = var.subnet_ids[0]
    route_table_id = aws_route_table.route_tab.id
}
resource "aws_route_table_association" "route_table_pub2"{
    subnet_id = var.subnet_ids[1]
    route_table_id = aws_route_table.route_tab.id
}  