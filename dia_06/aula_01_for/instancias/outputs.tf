output "public_ip" {
  description = "IPs públicos"
  value       = { for key, instance in aws_instance.this : instance.tags["Env"] => instance.public_ip... }
}

