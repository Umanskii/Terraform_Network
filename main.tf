# bild vpc:
module "vpc" {
  source = "github.com/Umanskii/my_modules.git//vpc"

  cidr_block = "10.0.0.0/24"
  vpc_tag    = "vpc"
}

# bild igw:
module "igw" {
  source  = "github.com/Umanskii/my_modules.git//igw"
  vpc_id  = module.vpc.id
  igw_tag = "igw"

}


# Bild Public 1a subnet:
module "public_1a_subnet" {
  source = "github.com/Umanskii/my_modules.git//subnet"

  vpc_id                  = module.vpc.id
  cidr_block              = "10.0.0.0/26"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  subnet_tag              = "pablic_1a"

}

# Bild Public 1b subnet:
module "public_1b_subnet" {
  source = "github.com/Umanskii/my_modules.git//subnet"

  vpc_id                  = module.vpc.id
  cidr_block              = "10.0.0.64/26"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  subnet_tag              = "pablic_1b"

}

# Bild Private 1a subnet:
module "private_1a_subnet" {
  source = "github.com/Umanskii/my_modules.git//subnet"

  vpc_id                  = module.vpc.id
  cidr_block              = "10.0.0.128/26"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  subnet_tag              = "private_1a"

}
# Bild Private 1b subnet:
module "private_1b_subnet" {
  source = "github.com/Umanskii/my_modules.git//subnet"

  vpc_id                  = module.vpc.id
  cidr_block              = "10.0.0.192/26"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  subnet_tag              = "private_1b"

}
