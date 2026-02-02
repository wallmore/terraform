variable "filename" {
  description = "file name of project"
  default     = "windows.txt"
  type        = string
}
variable "content" {
  description = "content of the project"
  default     = "welcome to the windows"
  type = string
}
variable "prefix" {
  description = "content of the prefix"
  default = "MR"
  type = string
}
variable "length" {
  description = "length of the name"
  default = 1
  type = number
}
