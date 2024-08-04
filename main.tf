resource "equinix_network_device" "c8kv-ha" {
  name            = var.device_name1
  metro_code      = var.device_metro
  type_code       = var.device_type
  self_managed    = true
  byol            = true
  package_code    = var.package_code
  notifications   = var.notifications_emails
  hostname        = var.host_name1
  account_number  = var.account_number
  version         = var.sw_version
  core_count      = var.core_count
  term_length     = var.term_length
  additional_bandwidth = var.additional_bandwidth
  project_id      = var.project_id
   ssh_key {
    username = var.username
    key_name = var.key_name
  }

  acl_template_id = var.acl_template_id

  
  secondary_device {
    name            = var.device_name2
    metro_code      = var.device_metro
    hostname        = var.host_name2
    notifications   = var.notifications_emails
    account_number  = var.account_number
    acl_template_id = var.acl_template_id
  }  
}


resource "equinix_network_device_link" "c8kvDL" {
  name   = var.DL_name
  subnet = var.DL_subnet
  project_id       = var.project_id
  device {
    id           = equinix_network_device.c8kv-ha.uuid
    interface_id = 5
  }
  device {
    id           = equinix_network_device.c8kv-ha.secondary_device[0].uuid
    interface_id = 5
  }
  metro_link {
    account_number  = equinix_network_device.c8kv-ha.account_number
    throughput      = var.DL_throughput
    throughput_unit = var.DL_throughput_unit
    metro_code      = equinix_network_device.c8kv-ha.metro_code
  }
}

