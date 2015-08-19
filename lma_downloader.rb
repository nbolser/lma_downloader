usage unless ARGV[0] && ARGV[1]

class Downloader
  class Crawler
    require 'nokogiri'
    require 'open-uri'

    attr_reader :page, :output

    def initialize(url, output_dir)
      @page   = Nokogiri::HTML(open(url))
      @output = output_dir
    end

    def download_m3u
      do
        m3u = open(m3u_url)


      end
    end

    def find_m3u_link
      page.css(css)[0].values.join
    end

    def file_dir
      find_m3u_link.split('/')[2]
    end

    def download_dir
      File.basename(find_m3u_link.split('/')[2])
    end

    def m3u_url
      'https://archive.org' + find_m3u_link
    end

    def css
      "#wrap > div:nth-child(6) > div > div.col-sm-4.thats-right > center > nobr > a"
    end


  end
end


do
  m3u = Links.new(file).get_links

end



def usage
  puts "$ ruby lma_downloader <url> | <output_dir>"
  puts "Example: ruby lma_downloader https://blah.blah ~/downloads"
end

