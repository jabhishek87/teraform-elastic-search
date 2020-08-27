# teraform-elastic-search
teraform-elastic-search

To install Elastic Search IN aws thre were multiple Options <br>
    a) use packer to create ami and launch ami on aws using treeaform <br>
    b) create aws instance nad use provisioner o install and configure elastic cluster <br>
    c) use cloud formation template  <br>
    d) use aws elasticsearch service and provide the required data through terraform  <br>

Using  aws elasticsearch service
<p>From this recipe you’ll learn how to create
<a href="https://aws.amazon.com/elasticsearch-service/">AWS ElasticSearch</a>
cluster using <a href="https://www.terraform.io/">Terrafrom</a>.</p>

use aws Auth by exporting env variable

    windows
        setx AWS_ACCESS_KEY_ID "<Access_Key_ID>"
        setx AWS_SECRET_ACCESS_KEY "<Secret_Access_Key>"
    linux
        export AWS_ACCESS_KEY_ID="<Access_Key_ID>"
        export AWS_SECRET_ACCESS_KEY="<Secret_Access_Key>"

Steps to run

```sh
# clone the repository
git clone https://github.com/jabhishek87/teraform-elastic-search.git

# go to directory
cd teraform-elastic-search

# terraform init
terraform init
# change the values if required on terraform.tfvars

# apply terraform
terraform apply

```

credits

https://learn.hashicorp.com/tutorials
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticsearch_domain
https://github.com/lgallard/terraform-aws-elasticsearch