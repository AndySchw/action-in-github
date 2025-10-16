variable "aws_region" {
  description = "AWS Region für die Infrastruktur"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Projekt-Name (wird für Ressourcen-Namen verwendet)"
  type        = string
  default     = "github-actions-demo"
}

variable "environment" {
  description = "Environment (dev, staging, production)"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"  # Free Tier eligible
}

variable "ami_id" {
  description = "AMI ID für EC2-Instanz (Ubuntu 22.04 LTS)"
  type        = string
  # Ubuntu 22.04 LTS in eu-central-1
  default     = "ami-0a628e1e89aaedf80"

  # Andere Regionen (auskommentiert):
  # us-east-1: ami-0866a3c8686eaeeba
  # us-west-2: ami-05134c8ef96964280
  # eu-west-1: ami-0d64bb532e0502c46
}

variable "ssh_public_key" {
  description = "SSH Public Key für EC2-Zugriff (leer lassen wenn kein SSH gewünscht)"
  type        = string
  default     = ""
  sensitive   = true
}