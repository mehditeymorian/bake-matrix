group "default" {
  targets = ['1-19', '1-18', '1-17']
}

variable "TAG" {
  default = "golang"
}

target "1-19" {
  dockerfile = './Dockerfile'
  tags = ["${TAG}:1.19", "${TAG}:1.19-alpine"]
  args = {
    IMAGE = "golang:1.19.3-alpine3.16"
  }
}

target "1-18" {
  dockerfile = "./Dockerfile"
  tags = ["${TAG}:1.18", "${TAG}:1.18-alpine"]
  args = {
    IMAGE = "golang:1.18.7-alpine3.16"
  }
}

target "1-17" {
  dockerfile = "./Dockerfile"
  tags = ["${TAG}:1.17", "${TAG}:1.17-alpine"]
  args = {
    IMAGE = "golang:1.17-alpine3.14"
  }
}


