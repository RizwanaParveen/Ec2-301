output dns{
    value = aws_instance.test-ec2-instance
}
output ip {
    value = aws_eip.ip-test-env.id
}