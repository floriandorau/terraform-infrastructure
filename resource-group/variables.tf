variable "name" {
  description = "resource group name"
}

variable "location" {
  description = "location"
}

variable "tag" {
  type = object({    
    environment = string
    creator = string
  })
}