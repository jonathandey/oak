require "json"
require "time"
require "kemal"
require "tallboy"

data_rows = Array(Array(Time | String)).new
sockets = Hash(UInt64, HTTP::WebSocket).new

server_port = "23517"

# TODO: Write documentation for `Sshit`
module Oak
  VERSION = "0.1.0"

  # TODO: Put your code here
  get "/" do |env|
    "ok"
  end

  get "/console" do
    ip = "127.0.0.1"
    port = server_port
    render "src/views/console.ecr"
  end

  post "/" do |env|
    uuid = env.params.json["uuid"]
    payloads = env.params.json["payloads"]

    sockets.each do |hash, socket|
      unless socket.closed?
        socket.send(env.params.json.to_json.to_s)
      end
    end

    "ok"
  end

  ws "/" do |socket|
    puts socket.hash
    sockets[socket.hash] = socket
  end

  Kemal.run(23517)
end
