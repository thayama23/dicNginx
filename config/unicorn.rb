require 'fileutils'

worker_processes 4
listen 'unix:///tmp/nginx.socket', backlog: 1024
before_fork do |server,worker|
	FileUtils.touch('/tmp/app-initialized')
end