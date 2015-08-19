class UrlValidator
  require 'nokogiri'
  require 'open-uri'

  attr_reader :file

  def initialize(url)
    @url = url
  end

  def get_playlist
    doc = Nokogiri::XML(File.open(url))
    doc.xpath(@doc = Nokogiri::XML(File.open("shows.xml"))
    links = []
    File.open("#{file}", "r") do |f|
      f.each_line do |line|
        links << line
      end
    end
    validate_reponse(links)
    links
  end

  private

  def validate_reponse
    raise "Not a valid url." unless respose == 200
  end

  def response
    url = URI.parse('@url')
    req = Net::HTTP.new(url.host, url.port)
    res = req.request_head(url.path)
  end
end
