output "containerengine_clusters_id" {
  description = "Map of id values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no id are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "containerengine_clusters_available_kubernetes_upgrades" {
  description = "Map of available_kubernetes_upgrades values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no available_kubernetes_upgrades are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.available_kubernetes_upgrades if v.available_kubernetes_upgrades != null && length(v.available_kubernetes_upgrades) > 0 }
}
output "containerengine_clusters_cluster_pod_network_options" {
  description = "Map of cluster_pod_network_options values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no cluster_pod_network_options are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.cluster_pod_network_options if v.cluster_pod_network_options != null && length(v.cluster_pod_network_options) > 0 }
}
output "containerengine_clusters_compartment_id" {
  description = "Map of compartment_id values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no compartment_id are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "containerengine_clusters_defined_tags" {
  description = "Map of defined_tags values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no defined_tags are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "containerengine_clusters_endpoint_config" {
  description = "Map of endpoint_config values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no endpoint_config are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => one(v.endpoint_config) if v.endpoint_config != null && length(v.endpoint_config) > 0 }
}
output "containerengine_clusters_endpoints" {
  description = "Map of endpoints values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no endpoints are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "containerengine_clusters_freeform_tags" {
  description = "Map of freeform_tags values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "containerengine_clusters_image_policy_config" {
  description = "Map of image_policy_config values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no image_policy_config are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => one(v.image_policy_config) if v.image_policy_config != null && length(v.image_policy_config) > 0 }
}
output "containerengine_clusters_kms_key_id" {
  description = "Map of kms_key_id values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no kms_key_id are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "containerengine_clusters_kubernetes_version" {
  description = "Map of kubernetes_version values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no kubernetes_version are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.kubernetes_version if v.kubernetes_version != null && length(v.kubernetes_version) > 0 }
}
output "containerengine_clusters_lifecycle_details" {
  description = "Map of lifecycle_details values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "containerengine_clusters_metadata" {
  description = "Map of metadata values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no metadata are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "containerengine_clusters_name" {
  description = "Map of name values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no name are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "containerengine_clusters_open_id_connect_discovery_endpoint" {
  description = "Map of open_id_connect_discovery_endpoint values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no open_id_connect_discovery_endpoint are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.open_id_connect_discovery_endpoint if v.open_id_connect_discovery_endpoint != null && length(v.open_id_connect_discovery_endpoint) > 0 }
}
output "containerengine_clusters_open_id_connect_discovery_key" {
  description = "Map of open_id_connect_discovery_key values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no open_id_connect_discovery_key are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.open_id_connect_discovery_key if v.open_id_connect_discovery_key != null && length(v.open_id_connect_discovery_key) > 0 }
}
output "containerengine_clusters_options" {
  description = "Map of options values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no options are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => one(v.options) if v.options != null && length(v.options) > 0 }
}
output "containerengine_clusters_state" {
  description = "Map of state values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no state are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "containerengine_clusters_type" {
  description = "Map of type values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no type are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.type if v.type != null && length(v.type) > 0 }
}
output "containerengine_clusters_vcn_id" {
  description = "Map of vcn_id values across all containerengine_clusters, keyed the same as var.containerengine_clusters except keys with no vcn_id are omitted"
  value       = { for k, v in oci_containerengine_cluster.containerengine_clusters : k => v.vcn_id if v.vcn_id != null && length(v.vcn_id) > 0 }
}

