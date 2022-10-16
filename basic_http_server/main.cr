require "http/server"

port = 8080
server = HTTP::Server.new do |context|
    context.response.content_type = "text/plain"
    context.response.print "Hello world, got #{context.request.path}!"
end

puts "Listening on http://127.0.0.1:#{port}"
server.listen(port)