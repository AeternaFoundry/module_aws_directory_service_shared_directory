output "directory_service_shared_directories_id" {
  description = "Map of id values across all directory_service_shared_directories, keyed the same as var.directory_service_shared_directories"
  value       = { for k, v in aws_directory_service_shared_directory.directory_service_shared_directories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directory_service_shared_directories_directory_id" {
  description = "Map of directory_id values across all directory_service_shared_directories, keyed the same as var.directory_service_shared_directories"
  value       = { for k, v in aws_directory_service_shared_directory.directory_service_shared_directories : k => v.directory_id if v.directory_id != null && length(v.directory_id) > 0 }
}
output "directory_service_shared_directories_method" {
  description = "Map of method values across all directory_service_shared_directories, keyed the same as var.directory_service_shared_directories"
  value       = { for k, v in aws_directory_service_shared_directory.directory_service_shared_directories : k => v.method if v.method != null && length(v.method) > 0 }
}
output "directory_service_shared_directories_notes" {
  description = "Map of notes values across all directory_service_shared_directories, keyed the same as var.directory_service_shared_directories"
  value       = { for k, v in aws_directory_service_shared_directory.directory_service_shared_directories : k => v.notes if v.notes != null && length(v.notes) > 0 }
  sensitive   = true
}
output "directory_service_shared_directories_region" {
  description = "Map of region values across all directory_service_shared_directories, keyed the same as var.directory_service_shared_directories"
  value       = { for k, v in aws_directory_service_shared_directory.directory_service_shared_directories : k => v.region if v.region != null && length(v.region) > 0 }
}
output "directory_service_shared_directories_shared_directory_id" {
  description = "Map of shared_directory_id values across all directory_service_shared_directories, keyed the same as var.directory_service_shared_directories"
  value       = { for k, v in aws_directory_service_shared_directory.directory_service_shared_directories : k => v.shared_directory_id if v.shared_directory_id != null && length(v.shared_directory_id) > 0 }
}
output "directory_service_shared_directories_target" {
  description = "Map of target values across all directory_service_shared_directories, keyed the same as var.directory_service_shared_directories"
  value       = { for k, v in aws_directory_service_shared_directory.directory_service_shared_directories : k => one(v.target) if v.target != null && length(v.target) > 0 }
}

