output EC2_IP{
    value = "40.70.79.15"
}
output eip {
    value = aws_eip.ip-test-env.id
}
