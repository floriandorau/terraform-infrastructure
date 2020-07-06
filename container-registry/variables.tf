variable "resource_group" {
  description = "name of the resource group the container registry is located"
  type = string
}

variable "name" {
  description = "name of the created container registry"
  type = string
}

variable "location" {
  description = "location of the created container registry"
  type = string
}

variable "sku" {
  default = "Standard"
  type = string
}

variable "tag" {
  type = object({    
    environment = string
    creator = string
  })
}
