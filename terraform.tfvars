region="us-east-1"

es_domain="esterraformexample"
es_version="7.7"
es_instance_type="t2.small.elasticsearch"
es_automated_snapshot_start_hour="23"
ebs_volume_size=10

cluster_config_instance_count = 1

tags = {
    Name = "EC2_Elasic_instance"
    env = "development"
    owner = "DevOps"
    Domain = "esterraformexample"
}

whitelist=["49.37.10.1/24"]