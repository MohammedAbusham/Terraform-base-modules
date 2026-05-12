output "vpc_id" {
  value = aws_vpc.custom-vpc.id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "private subnet IDs"
  value       = aws_subnet.private[*].id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}

output "public_route_table_id" {
  value = aws_route_table.private.id
}