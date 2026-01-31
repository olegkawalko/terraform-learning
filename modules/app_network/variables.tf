variable "vpc_id" {
type=string

}
variable "publi_subnet_cidrs"{

    type=list(string)
} 

variable "azs"{

    type=list(string)
}
variable "name_prefix"{
    type=string
}