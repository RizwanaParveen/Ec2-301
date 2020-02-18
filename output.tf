output EC2_IP{
    value = "40.70.84.246"
}
output ip {
    value = aws_eip.ip-test-env.id
}
