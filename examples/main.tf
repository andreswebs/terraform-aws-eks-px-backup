module "px_backup" {
  source                  = "github.com/andreswebs/terraform-aws-eks-px-backup"
  storage_class_name      = var.px_backup_storage_class_name
  chart_version_px_backup = var.chart_version_px_backup
}