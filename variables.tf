
variable "equinix_client_id" {
  description = "Equinix client ID (consumer key), obtained after registering app in the developer platform"
  type        = string
}
variable "equinix_client_secret" {
  description = "Equinix client secret ID (consumer secret), obtained after registering app in the developer platform"
  type        = string
}

variable "project_id" {
description = "Project ID" 
 type        = string
}

##### Primary Device Declarations #######

variable "device_name1" {
description = "Name of first device" 
 type        = string
}


variable "device_metro" {
  description = "Metro in which the device is deployed" 
  type        = string
}

variable "device_type" {
  description = "Device Type" 
  type        = string
}

variable "package_code" {
  description = "Package code" 
  type        = string
}

variable "notifications_emails" {
  description = "Email addresses" 
  type        = list(string)
}

variable "host_name1" {
  description = "Host Name of first device" 
  type        = string
}


variable "account_number" {
  description = "Account Number" 
  type        = number
}

variable "sw_version" {
  description = "Device Software Version" 
  type        = string
}


variable "core_count" {
  description = "Device core" 
  type        = number
}

variable "term_length" {
  description = "Device contract length" 
  type        = number
}


variable "additional_bandwidth" {
description = "Additional Bandwidth" 
  type        = string
}

variable "username" {
description = "SSH Username" 
  type        = string
}

variable "key_name" {
  description = "Public SSH Key Name" 
  type        = string
}


variable "acl_template_id" {
  description = "ACL Template for device" 
  type        = string
}



##### Secondary Device Declarations #######

variable "device_name2" {
description = "Name of second device" 
type        = string
}


variable "host_name2" {
description = "Host Name of second device" 
type        = string
}


##### Device Link Declarations #######


variable "DL_name" {
description = "Device link name" 
type        = string
}

variable "DL_subnet" {
description = "Device link subnet" 
type        = string
}

variable "DL_throughput" {
description = "Device link throughput" 
type        = string
}

variable "DL_throughput_unit" {
description = "Device link throughput unit" 
type        = string
}


 