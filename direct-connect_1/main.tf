resource "samsungcloudplatformv2_directconnect_direct_connect" "dc" {
    name        = var.name
    bandwidth   = var.bandwidth
    vpc_id      = var.vpc_id
    description = var.description

    firewall_enabled = var.firewall_enabled
    firewall_loggable = var.firewall_loggable

    tags = var.tags
}