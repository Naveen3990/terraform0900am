module "dev" {
    source = "../Day-09-modules"
    instance_type = "t3.micro"
    name = "dev-instance"
    ami_idd = "ami-00e801948462f718a"
    


}