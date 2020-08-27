# AWS Elasticsearch SaaS
data "aws_region" "current" {}

data "aws_caller_identity" "current" {}


resource "aws_elasticsearch_domain" "example" {
    domain_name           = var.es_domain
    elasticsearch_version = var.es_version

    cluster_config {
        instance_type   = var.es_instance_type
        instance_count  =  var.cluster_config_instance_count
    }

    snapshot_options {
        automated_snapshot_start_hour = var.es_automated_snapshot_start_hour
    }
    ebs_options {
        ebs_enabled = var.ebs_volume_size > 0 ? true : false
        volume_size = var.ebs_volume_size
        volume_type = var.ebs_volume_type
        # iops        = var.ebs_iops
    }

    access_policies = templatefile("${path.module}/acces_policies.tpl", {
        region      = data.aws_region.current.name,
        account     = data.aws_caller_identity.current.account_id,
        domain_name = var.es_domain,
        whitelist   = "${jsonencode(var.whitelist)}"
    })

    # advanced_security_options
    # advanced_security_options = var.advanced_security_options == null ? {} : var.advanced_security_options
    # not Suportted for free tier
    # advanced_security_options {
    #     enabled                        = true
    #     internal_user_database_enabled = true
    #     master_user_options {
    #         master_user_name     = "test_master_user"
    #         master_user_password = "Barbarbarbar1!"
    #     }
    # }
    # node_to_node_encryption {
    #     enabled = true
    # }
    # not Suportted for free tier
    # encrypt_at_rest {
    #     enabled = true
    # }

    tags = var.tags
}