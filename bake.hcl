variable "TAG" {
  default = "golang"
}

group "default" {
  targets = ["go-1-19", "go-1-18", "go-1-17"]
}

group "golang" {
  targets = ["go-1-19", "go-1-18", "go-1-17"]
}

group "alpine" {
  targets = ["alp-3-16"]
}

target "go-1-19" {
  dockerfile = "./Dockerfile"
  tags = ["${TAG}:1.19", "${TAG}:1.19-alpine"]
  args = {
    IMAGE = "golang:1.19.3-alpine3.16"
  }
}

target "go-1-18" {
  dockerfile = "./Dockerfile"
  tags = ["${TAG}:1.18", "${TAG}:1.18-alpine"]
  args = {
    IMAGE = "golang:1.18.7-alpine3.16"
  }
}

target "go-1-17" {
  dockerfile = "./Dockerfile"
  tags = ["${TAG}:1.17", "${TAG}:1.17-alpine"]
  args = {
    IMAGE = "golang:1.17-alpine3.14"
  }
}

target "alp-3-16" {
  dockerfile = "./Dockerfile"
  tags = ["${TAG}:3.16"]
  args = {
    IMAGE = "alpine:3.16"
  }
}


