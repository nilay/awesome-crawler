class AwesomeCrawler
  def self.crawl(url)
    response = HTTParty.get(url)
    response.code == 200 ? response.body : nil

  end
end