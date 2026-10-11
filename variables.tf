variable "containerengine_clusters" {
  description = <<EOT
Map of containerengine_clusters, attributes below
Required:
    - compartment_id
    - kubernetes_version
    - name
    - vcn_id
Optional:
    - defined_tags
    - freeform_tags
    - kms_key_id
    - type
    - cluster_pod_network_options (block):
        - cni_type (required)
    - endpoint_config (block):
        - is_public_ip_enabled (optional)
        - nsg_ids (optional)
        - security_attributes (optional)
        - subnet_id (required)
    - image_policy_config (block):
        - is_policy_enabled (optional)
        - key_details (optional, block):
            - kms_key_id (optional)
    - options (block):
        - add_ons (optional, block):
            - is_kubernetes_dashboard_enabled (optional)
            - is_tiller_enabled (optional)
        - admission_controller_options (optional, block):
            - is_pod_security_policy_enabled (optional)
        - ip_families (optional)
        - kubernetes_network_config (optional, block):
            - pods_cidr (optional)
            - services_cidr (optional)
        - open_id_connect_discovery (optional, block):
            - is_open_id_connect_discovery_enabled (optional)
        - open_id_connect_token_authentication_config (optional, block):
            - ca_certificate (optional)
            - client_id (optional)
            - configuration_file (optional)
            - groups_claim (optional)
            - groups_prefix (optional)
            - is_open_id_connect_auth_enabled (required)
            - issuer_url (optional)
            - required_claims (optional, block):
                - key (optional)
                - value (optional)
            - signing_algorithms (optional)
            - username_claim (optional)
            - username_prefix (optional)
        - persistent_volume_config (optional, block):
            - defined_tags (optional)
            - freeform_tags (optional)
        - service_lb_config (optional, block):
            - backend_nsg_ids (optional)
            - defined_tags (optional)
            - freeform_tags (optional)
        - service_lb_subnet_ids (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id     = string
    kubernetes_version = string
    name               = string
    vcn_id             = string
    defined_tags       = optional(map(string))
    freeform_tags      = optional(map(string))
    kms_key_id         = optional(string)
    type               = optional(string)
    cluster_pod_network_options = optional(list(object({
      cni_type = string
    })))
    endpoint_config = optional(object({
      is_public_ip_enabled = optional(bool)
      nsg_ids              = optional(set(string))
      security_attributes  = optional(map(string))
      subnet_id            = string
    }))
    image_policy_config = optional(object({
      is_policy_enabled = optional(bool)
      key_details = optional(list(object({
        kms_key_id = optional(string)
      })))
    }))
    options = optional(object({
      add_ons = optional(object({
        is_kubernetes_dashboard_enabled = optional(bool)
        is_tiller_enabled               = optional(bool)
      }))
      admission_controller_options = optional(object({
        is_pod_security_policy_enabled = optional(bool)
      }))
      ip_families = optional(list(string))
      kubernetes_network_config = optional(object({
        pods_cidr     = optional(string)
        services_cidr = optional(string)
      }))
      open_id_connect_discovery = optional(object({
        is_open_id_connect_discovery_enabled = optional(bool)
      }))
      open_id_connect_token_authentication_config = optional(object({
        ca_certificate                  = optional(string)
        client_id                       = optional(string)
        configuration_file              = optional(string)
        groups_claim                    = optional(string)
        groups_prefix                   = optional(string)
        is_open_id_connect_auth_enabled = bool
        issuer_url                      = optional(string)
        required_claims = optional(list(object({
          key   = optional(string)
          value = optional(string)
        })))
        signing_algorithms = optional(list(string))
        username_claim     = optional(string)
        username_prefix    = optional(string)
      }))
      persistent_volume_config = optional(object({
        defined_tags  = optional(map(string))
        freeform_tags = optional(map(string))
      }))
      service_lb_config = optional(object({
        backend_nsg_ids = optional(list(string))
        defined_tags    = optional(map(string))
        freeform_tags   = optional(map(string))
      }))
      service_lb_subnet_ids = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

