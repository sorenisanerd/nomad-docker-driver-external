# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

job "example" {
  datacenters = ["dc1"]
  type        = "batch"

  group "example" {
    task "hello-world" {
      driver = "docker-ext"

      config {
        image      = "example/example"
        privileged = true
      }
    }
  }
}
