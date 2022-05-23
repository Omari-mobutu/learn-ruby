require 'gserver'

class LogServer < GServer
  def initialize
    super(12345)
  end
  
  def server (client)
    client.puts get_end_of_file
  end

  private
  def get_end_of_file 
    file.open("/var/log/systemlog") do |log|
      log.seek(-500, IO::SEEK_END)
      log.gets
      log.read
    end
  end
  
end
server = LogServer.new
server.start.join
