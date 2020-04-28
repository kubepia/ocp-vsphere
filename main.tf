locals {
  bootstrap_fqdns     = ["bootstrap-0.${var.cluster_domain}"]
#   control_plane_fqdns = [for idx in range(var.control_plane_count) : "control-plane-${idx}.${var.cluster_domain}"]
#   compute_fqdns       = [for idx in range(var.compute_count) : "compute-${idx}.${var.cluster_domain}"]
}

provider "vsphere" {
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = var.vsphere_server
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = var.vsphere_datacenter
}

data "vsphere_compute_cluster" "compute_cluster" {
  name          = var.vsphere_cluster
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = var.vm_network
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.vm_template
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_resource_pool" "resource_pool" {
  name                    = var.cluster_id
  parent_resource_pool_id = data.vsphere_compute_cluster.compute_cluster.resource_pool_id
}

resource "vsphere_folder" "folder" {
  path          = var.cluster_id
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

module "bootstrap" {
  source = "./vm"

  ignition = file(var.bootstrap_ignition_path)

  hostnames_ip_addresses = zipmap(
      local.bootstrap_fqdns,
        var.bootstrap_ip_address
  )
#   zipmap(
#     local.bootstrap_fqdns,
#     module.ipam_bootstrap.ip_addresses
#   )

  resource_pool_id      = vsphere_resource_pool.resource_pool.id
  datastore_id          = data.vsphere_datastore.datastore.id
  datacenter_id         = data.vsphere_datacenter.dc.id
  network_id            = data.vsphere_network.network.id
  folder_id             = vsphere_folder.folder.path
  guest_id              = data.vsphere_virtual_machine.template.guest_id
  template_uuid         = data.vsphere_virtual_machine.template.id
  disk_thin_provisioned = data.vsphere_virtual_machine.template.disks[0].thin_provisioned

  cluster_domain = var.cluster_domain
  machine_cidr   = var.machine_cidr

  num_cpus      = 8
  memory        = 16384
  dns_addresses = var.vm_dns_addresses
}