output "es_endpoint" {
  value = aws_elasticsearch_domain.example.endpoint
}

output "kibana_endpoint" {
  value = aws_elasticsearch_domain.example.kibana_endpoint
}