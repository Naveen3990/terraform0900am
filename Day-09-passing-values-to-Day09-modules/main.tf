module "dev" {
  source        = "../Day-09-modules"
  instance_type = "t3.micro"
  name          = "dev-instance"
  ami_id        = "ami-00e801948462f718a"
}
module "prod" {
  source        = "../Day-09-modules"
  instance_type = "t3.micro"
  name          = "prod-instance"
  ami_id        = "ami-00e801948462f718a"
}