variable "ami_name" {
    default = "ubuntu"
}
variable "ami_id" {
    default = "ami-0994c095691a46fb5"
}
variable "ami_key_pair_name" {
    default = "test-key"
}
variable "region" {
    default = "us-west-2"
}

variable "cidr_block" {
    default = "10.0.0.0/16"
}
variable "zone" {
    default = "us-west-2a"
}
variable "port"{
    default = 22
}