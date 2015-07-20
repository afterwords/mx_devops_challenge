# a simple "hello world" ruby/rack app
# requires ruby to be installed as well as the 'rack' gem
# run it with: ruby /path/to/app.rb
require "rack"
require "socket"

app = Proc.new do |env|
    ["200", {"Content-Type" => "text/html"}, ["Hello World from #{Socket.gethostname}"]]
end

Rack::Handler::WEBrick.run app, :Host => "0.0.0.0", :Port => 8080