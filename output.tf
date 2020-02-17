output dns{
    value = aws_eip.ip-test-env.public_dns 
}
output ip {
    value = aws_eip.ip-test-env.id
}
