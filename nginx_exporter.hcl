listen {
  port = 4040
  address = "0.0.0.0"
}

namespace "nginx" {
  format = "$remote_addr - $remote_user [$time_local] \"$request\" $status $body_bytes_sent \"$http_referer\" \"$http_user_agent\" $request_time $upstream_response_time $pipe"
  source_files = ["/var/log/nginx/flask/access.log"]
  labels {
    node = "flask"
    nodeId = "01"
  }

}