variable "resource_group_list" {
  type    = list(any)
  default = []
}

variable "storage_account_list" {
  type    = list(any)
  default = []
}

variable "resource_grp_list" {
  type    = list(any)
  default = []
}

variable "storage_acc_list" {
  type    = list(any)
  default = []
}

variable "tf_state_access_key" {
  type    = string
  default = ""
}

variable "client_secret" {
  type    = string
  default = ""
}
