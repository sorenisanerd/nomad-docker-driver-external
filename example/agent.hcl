# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

log_level = "TRACE"

plugin "docker-ext" {
  config {
    allow_privileged = true
  }
  gc {
    dangling_containers {
      enabled = true
    }
  }
}
