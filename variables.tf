######################## GENERAL #########################

variable "REGION" {
  default = "eu-west-1"
}

variable "AZ_A" {
  default = "eu-west-1a"
}

variable "AZ_B" {
  default = "eu-west-1b"
}

#################### FIRST VPC - MGMT ####################
 
variable "VPC_1_NAME" {
  default = "MGMT"
}
 
variable "VPC_1_CIDR" { 
  default = "172.30.0.0/18"
}

variable "VPC_1_SUBNET_1_NAME" { 
  default = "MGMT Tools A"
}

variable "VPC_1_SUBNET_1_CIDR" { 
  default = "172.30.0.0/24"
}

variable "VPC_1_SUBNET_1_PUBLIC" { 
  default = "false"
}

#################### SECOND VPC - APP ####################
 
variable "VPC_2_NAME" {
  default = "APP"
}
 
variable "VPC_2_CIDR" { 
  default = "172.30.64.0/18"
}

### Subnet App; AZ - A

variable "VPC_2_SUBNET_1_NAME" { 
  default = "APP App A"
}

variable "VPC_2_SUBNET_1_CIDR" { 
  default = "172.30.64.0/24"
}

variable "VPC_2_SUBNET_1_PUBLIC" { 
  default = "false"
}

### Subnet App; AZ - B

variable "VPC_2_SUBNET_2_NAME" { 
  default = "APP App B"
}

variable "VPC_2_SUBNET_2_CIDR" { 
  default = "172.30.65.0/24"
}

variable "VPC_2_SUBNET_2_PUBLIC" { 
  default = "false"
}

### Subnet DB; AZ - A

variable "VPC_2_SUBNET_3_NAME" { 
  default = "APP DB A"
}

variable "VPC_2_SUBNET_3_CIDR" { 
  default = "172.30.66.0/24"
}

variable "VPC_2_SUBNET_3_PUBLIC" { 
  default = "false"
}

### Subnet DB; AZ - B

variable "VPC_2_SUBNET_4_NAME" { 
  default = "APP DB B"
}

variable "VPC_2_SUBNET_4_CIDR" { 
  default = "172.30.67.0/24"
}

variable "VPC_2_SUBNET_4_PUBLIC" { 
  default = "false"
}

### Subnet BI; AZ - A

variable "VPC_2_SUBNET_5_NAME" { 
  default = "APP BI A"
}

variable "VPC_2_SUBNET_5_CIDR" { 
  default = "172.30.68.0/24"
}

variable "VPC_2_SUBNET_5_PUBLIC" { 
  default = "false"
}

### Subnet LB; AZ - A

variable "VPC_2_SUBNET_6_NAME" { 
  default = "APP DB A"
}

variable "VPC_2_SUBNET_6_CIDR" { 
  default = "172.30.69.0/24"
}

variable "VPC_2_SUBNET_6_PUBLIC" { 
  default = "true"
}

### Subnet LB; AZ - B

variable "VPC_2_SUBNET_7_NAME" { 
  default = "APP DB B"
}

variable "VPC_2_SUBNET_7_CIDR" { 
  default = "172.30.70.0/24"
}

variable "VPC_2_SUBNET_7_PUBLIC" { 
  default = "true"
}