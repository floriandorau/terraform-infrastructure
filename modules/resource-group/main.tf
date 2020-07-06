resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location

  tags = {
    environment = var.tags.environment
    created_by  = var.tags.creator
    created_at  = timestamp()
    updated_by  = var.tags.creator
    updated_at  = timestamp()
    managed_by  = "terraform"
  }

  lifecycle {
    ignore_changes = [
      tags["creator"],
      tags["created"],
    ]
  }
}
