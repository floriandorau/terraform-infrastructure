resource "azurerm_container_registry" "container-registry" {
  name = var.name
  resource_group_name = var.resource_group
  
  sku = var.sku
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

