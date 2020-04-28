cluster_id = "hcp.arumtech"
cluster_domain = "hcp.darumtech.net"
base_domain = "darumtech.net"
vsphere_server = "192.168.0.70"
vsphere_user = "administrator@vsphere.local"
vsphere_password = "N1ceD@y0707"
vsphere_cluster = "NX-VMC"
vsphere_datacenter = "NX-DC"
vsphere_datastore = "VMware-NFS"
vm_template = "rhcos"
machine_cidr = "10.40.89.0/24"
control_plane_count = 3
compute_count = 0


bootstrap_ignition_path="./append.ign"
bootstrap_mac_address = ["00:50:56:be:01:32"]
bootstrap_cpu=8
bootstrap_mem=16384

control_plane_ignition_path="./master.ign"
control_plane_mac_address = ["00:50:56:be:07:88","00:50:56:be:c1:3b","00:50:56:be:17:ed"]
control_plane_cpu=8
control_plane_mem=16384

compute_ignition_path="./worker.ign"
# compute_mac_address = []
compute_mac_address = ["00:50:56:be:eb:5f","00:50:56:be:ca:5b","00:50:56:be:05:ac"]
compute_cpu=8
compute_mem=16384



# vm_dns_addresses=["10.40.89.159","8.8.8.8"]




# bootstrap_ignition = <<END_OF_BOOTSTRAP
# {"ignition": {"config": {"append": [{"source": "http://10.40.89.158/install/bootstrap.ign","verification": {}}]},"timeouts": {},"version": "2.1.0"},"networkd":{},"passwd": {},"storage":{},"systemd": {}}
# END_OF_BOOTSTRAP

# control_plane_ignition = <<END_OF_MASTER_IGNITION
# {"ignition":{"config":{"append":[{"source":"https://api-int.hcp.darumtech.net:22623/config/master","verification":{}}]},"security":{"tls":{"certificateAuthorities":[{"source":"data:text/plain;charset=utf-8;base64,LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURFRENDQWZpZ0F3SUJBZ0lJZDVUY2tzcStIaHN3RFFZSktvWklodmNOQVFFTEJRQXdKakVTTUJBR0ExVUUKQ3hNSmIzQmxibk5vYVdaME1SQXdEZ1lEVlFRREV3ZHliMjkwTFdOaE1CNFhEVEl3TURReU9EQTNNRGN3TVZvWApEVE13TURReU5qQTNNRGN3TVZvd0pqRVNNQkFHQTFVRUN4TUpiM0JsYm5Ob2FXWjBNUkF3RGdZRFZRUURFd2R5CmIyOTBMV05oTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUExNGh5bEUvRzFwNmkKdlljelFjNm1mbE1HeG95a2xXTjhHa0xXL0lPRDczMk85dm5RZ0dqT0pEcVJaM2pndTFQVjhGbG8zNDRJWUVCeQovRjU1ZTFVWnhYeUJnckVxSXowMVdBV1VKbTdtTkRWWE1ucFVDQUJpeE1zVy96K3k3SW1IbkxXWjNadmJGM2puCm1ORi9VMHBuOTY0eG9oQmE1ak1ua004ME1JVmJxUUtXemQvUGpaVm0zS09TNjJxOVIvNEVPbEZmSG5maU1IRTAKQ3hRUUdmQW5ZaVJGSU5tcVZPbzRnNVBCR1I3YU5QclF5OS9KSnZpY2hyOXVOZnhLSmRwT0liQ25Ca3B1bzJBVApyYXlUcUsvTWxvbm1sOEQvdTl2amxaWkZydFlqL1Bqa0VyYVA4Y3BpNkdKMTFnY0NocUphcXU2VmJUSzR4OHpECm1QOHNWRmJ4b1FJREFRQUJvMEl3UURBT0JnTlZIUThCQWY4RUJBTUNBcVF3RHdZRFZSMFRBUUgvQkFVd0F3RUIKL3pBZEJnTlZIUTRFRmdRVWV3b3NLS1l4VEV2QzFaWGlYeC9vTXB5NDEwRXdEUVlKS29aSWh2Y05BUUVMQlFBRApnZ0VCQUM0WUM2cmZTYUhkOUtCcjE1QkRpNW5DWGNrdFd2aGJ2WFVPSnBmMTJvaDZkaTkrWkp4ZTF1SnpUakNXClJ5T3Q0ajYzenV1NVprR2tWS09nek81a1RNZkx3NTBBeFVvQnoxSEhPcjNjZmVYL1ovRE5IU3BScHpkVU54bU8Kcm9BUVYyRVFJQm5TUDhkTEwwMzRiUkpnelZrWjFUY2ZjTEVDbVNtWTNwaDJ2U3d6bGxxUWg5UnJMaW1XNllpcApaRTZHSENUU3Ixa1hwKytPdWM5Nmtpcjh6NWs2eDFGalJpK2lSWDhkZmF5Yy9TVHgra3FHN3NGSFl1L2NSVlBQCml6T2MxRGFrejN4K2xwSm14TVlmSG9RNUV6TkFtdVRCS295Tnl0T05EdkdaUFM3bDAwWitFaFFSOEhDL2dLSEkKVUErTUZUdzJOSkxlTGlBbTZ5NmhVMkwvOUxrPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==","verification":{}}]}},"timeouts":{},"version":"2.2.0"},"networkd":{},"passwd":{},"storage":{},"systemd":{}}
# END_OF_MASTER_IGNITION

# compute_ignition = <<END_OF_WORKER_IGNITION
# {"ignition":{"config":{"append":[{"source":"https://api-int.hcp.darumtech.net:22623/config/worker","verification":{}}]},"security":{"tls":{"certificateAuthorities":[{"source":"data:text/plain;charset=utf-8;base64,LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURFRENDQWZpZ0F3SUJBZ0lJZDVUY2tzcStIaHN3RFFZSktvWklodmNOQVFFTEJRQXdKakVTTUJBR0ExVUUKQ3hNSmIzQmxibk5vYVdaME1SQXdEZ1lEVlFRREV3ZHliMjkwTFdOaE1CNFhEVEl3TURReU9EQTNNRGN3TVZvWApEVE13TURReU5qQTNNRGN3TVZvd0pqRVNNQkFHQTFVRUN4TUpiM0JsYm5Ob2FXWjBNUkF3RGdZRFZRUURFd2R5CmIyOTBMV05oTUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUExNGh5bEUvRzFwNmkKdlljelFjNm1mbE1HeG95a2xXTjhHa0xXL0lPRDczMk85dm5RZ0dqT0pEcVJaM2pndTFQVjhGbG8zNDRJWUVCeQovRjU1ZTFVWnhYeUJnckVxSXowMVdBV1VKbTdtTkRWWE1ucFVDQUJpeE1zVy96K3k3SW1IbkxXWjNadmJGM2puCm1ORi9VMHBuOTY0eG9oQmE1ak1ua004ME1JVmJxUUtXemQvUGpaVm0zS09TNjJxOVIvNEVPbEZmSG5maU1IRTAKQ3hRUUdmQW5ZaVJGSU5tcVZPbzRnNVBCR1I3YU5QclF5OS9KSnZpY2hyOXVOZnhLSmRwT0liQ25Ca3B1bzJBVApyYXlUcUsvTWxvbm1sOEQvdTl2amxaWkZydFlqL1Bqa0VyYVA4Y3BpNkdKMTFnY0NocUphcXU2VmJUSzR4OHpECm1QOHNWRmJ4b1FJREFRQUJvMEl3UURBT0JnTlZIUThCQWY4RUJBTUNBcVF3RHdZRFZSMFRBUUgvQkFVd0F3RUIKL3pBZEJnTlZIUTRFRmdRVWV3b3NLS1l4VEV2QzFaWGlYeC9vTXB5NDEwRXdEUVlKS29aSWh2Y05BUUVMQlFBRApnZ0VCQUM0WUM2cmZTYUhkOUtCcjE1QkRpNW5DWGNrdFd2aGJ2WFVPSnBmMTJvaDZkaTkrWkp4ZTF1SnpUakNXClJ5T3Q0ajYzenV1NVprR2tWS09nek81a1RNZkx3NTBBeFVvQnoxSEhPcjNjZmVYL1ovRE5IU3BScHpkVU54bU8Kcm9BUVYyRVFJQm5TUDhkTEwwMzRiUkpnelZrWjFUY2ZjTEVDbVNtWTNwaDJ2U3d6bGxxUWg5UnJMaW1XNllpcApaRTZHSENUU3Ixa1hwKytPdWM5Nmtpcjh6NWs2eDFGalJpK2lSWDhkZmF5Yy9TVHgra3FHN3NGSFl1L2NSVlBQCml6T2MxRGFrejN4K2xwSm14TVlmSG9RNUV6TkFtdVRCS295Tnl0T05EdkdaUFM3bDAwWitFaFFSOEhDL2dLSEkKVUErTUZUdzJOSkxlTGlBbTZ5NmhVMkwvOUxrPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==","verification":{}}]}},"timeouts":{},"version":"2.2.0"},"networkd":{},"passwd":{},"storage":{},"systemd":{}}
# END_OF_WORKER_IGNITION

# bootstrap_ip_address = ["10.40.89.199"]

# control_plane_ips = ["10.40.89.200","10.40.89.201","10.40.89.202"]

# compute_ips = ["10.40.89.211", "10.40.89.212", "10.40.89.212","10.40.89.101", "10.40.89.102", "10.40.89.103"]

