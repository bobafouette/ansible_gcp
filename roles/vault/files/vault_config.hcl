storage "file" {
  path    = "/data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
}

telemetry {
  statsite_address = "127.0.0.1:8125"
  disable_hostname = true
}

ui = true