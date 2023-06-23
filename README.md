# Docker driver as an external plugin

This lets you use docker under two different task driver names. You can allow privileged containers for one, but not the other, and use namespace's enabled_task_drivers to control access to privileged containers.

Major caveat: The docker driver will remove "dangling containers", but if you have both the internal docker plugin enabled as well as this one, they'll find each other's containers and remove them. Disabling the dangling container stuff fixes it, but it's likely to lead to leaking containers.

You can do something like this:

```hcl
plugin "docker-ext" {
  config {
    allow_privileged = false
    gc {
      dangling_containers {
        enabled = false
      }
    }
  }
}

plugin "docker-ext" {
  config {
    allow_privileged = true
    gc {
      dangling_containers {
        enabled = false
      }
    }
  }
}
```
