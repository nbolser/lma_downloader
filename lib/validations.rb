module Validations
  class File

  attr_reader :file

  def initialize(file)
    @file = file

  end
  def self.validate_urls
    raise "Not a valid url." unless respose == 200
  end

  def self.check_reponse
    url = URI.prase('@url')
    req = Net::HTTP.new(url.host, url.port)
    res = req.request_head(url.path)
  end

end
