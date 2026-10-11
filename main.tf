resource "oci_containerengine_cluster" "containerengine_clusters" {
  for_each = var.containerengine_clusters

  compartment_id     = each.value.compartment_id
  kubernetes_version = each.value.kubernetes_version
  name               = each.value.name
  vcn_id             = each.value.vcn_id
  defined_tags       = each.value.defined_tags
  freeform_tags      = each.value.freeform_tags
  kms_key_id         = each.value.kms_key_id
  type               = each.value.type

  dynamic "cluster_pod_network_options" {
    for_each = each.value.cluster_pod_network_options != null ? each.value.cluster_pod_network_options : []
    content {
      cni_type = cluster_pod_network_options.value.cni_type
    }
  }

  dynamic "endpoint_config" {
    for_each = each.value.endpoint_config != null ? [each.value.endpoint_config] : []
    content {
      is_public_ip_enabled = endpoint_config.value.is_public_ip_enabled
      nsg_ids              = endpoint_config.value.nsg_ids
      security_attributes  = endpoint_config.value.security_attributes
      subnet_id            = endpoint_config.value.subnet_id
    }
  }

  dynamic "image_policy_config" {
    for_each = each.value.image_policy_config != null ? [each.value.image_policy_config] : []
    content {
      is_policy_enabled = image_policy_config.value.is_policy_enabled
      dynamic "key_details" {
        for_each = image_policy_config.value.key_details != null ? image_policy_config.value.key_details : []
        content {
          kms_key_id = key_details.value.kms_key_id
        }
      }
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? [each.value.options] : []
    content {
      dynamic "add_ons" {
        for_each = options.value.add_ons != null ? [options.value.add_ons] : []
        content {
          is_kubernetes_dashboard_enabled = add_ons.value.is_kubernetes_dashboard_enabled
          is_tiller_enabled               = add_ons.value.is_tiller_enabled
        }
      }
      dynamic "admission_controller_options" {
        for_each = options.value.admission_controller_options != null ? [options.value.admission_controller_options] : []
        content {
          is_pod_security_policy_enabled = admission_controller_options.value.is_pod_security_policy_enabled
        }
      }
      ip_families = options.value.ip_families
      dynamic "kubernetes_network_config" {
        for_each = options.value.kubernetes_network_config != null ? [options.value.kubernetes_network_config] : []
        content {
          pods_cidr     = kubernetes_network_config.value.pods_cidr
          services_cidr = kubernetes_network_config.value.services_cidr
        }
      }
      dynamic "open_id_connect_discovery" {
        for_each = options.value.open_id_connect_discovery != null ? [options.value.open_id_connect_discovery] : []
        content {
          is_open_id_connect_discovery_enabled = open_id_connect_discovery.value.is_open_id_connect_discovery_enabled
        }
      }
      dynamic "open_id_connect_token_authentication_config" {
        for_each = options.value.open_id_connect_token_authentication_config != null ? [options.value.open_id_connect_token_authentication_config] : []
        content {
          ca_certificate                  = open_id_connect_token_authentication_config.value.ca_certificate
          client_id                       = open_id_connect_token_authentication_config.value.client_id
          configuration_file              = open_id_connect_token_authentication_config.value.configuration_file
          groups_claim                    = open_id_connect_token_authentication_config.value.groups_claim
          groups_prefix                   = open_id_connect_token_authentication_config.value.groups_prefix
          is_open_id_connect_auth_enabled = open_id_connect_token_authentication_config.value.is_open_id_connect_auth_enabled
          issuer_url                      = open_id_connect_token_authentication_config.value.issuer_url
          dynamic "required_claims" {
            for_each = open_id_connect_token_authentication_config.value.required_claims != null ? open_id_connect_token_authentication_config.value.required_claims : []
            content {
              key   = required_claims.value.key
              value = required_claims.value.value
            }
          }
          signing_algorithms = open_id_connect_token_authentication_config.value.signing_algorithms
          username_claim     = open_id_connect_token_authentication_config.value.username_claim
          username_prefix    = open_id_connect_token_authentication_config.value.username_prefix
        }
      }
      dynamic "persistent_volume_config" {
        for_each = options.value.persistent_volume_config != null ? [options.value.persistent_volume_config] : []
        content {
          defined_tags  = persistent_volume_config.value.defined_tags
          freeform_tags = persistent_volume_config.value.freeform_tags
        }
      }
      dynamic "service_lb_config" {
        for_each = options.value.service_lb_config != null ? [options.value.service_lb_config] : []
        content {
          backend_nsg_ids = service_lb_config.value.backend_nsg_ids
          defined_tags    = service_lb_config.value.defined_tags
          freeform_tags   = service_lb_config.value.freeform_tags
        }
      }
      service_lb_subnet_ids = options.value.service_lb_subnet_ids
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

