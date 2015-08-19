require "lma_downloader/version"

module LmaDownloader
  class Start
    require 'open-uri'

    def initialize(urlf, srate, output_path)
      @url = urlf
      @rate = srate
      @dl_path = output_path
    end

    def download_files
      links = FileHandler.new(@urlf).get_links
    end

  end
