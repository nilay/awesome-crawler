class AwesomeCrawler
  def self.crawl(url)
    response = HTTParty.get(url)
    if response.code == 200
      html_doc = Nokogiri::HTML(response.body)

      h1 = html_doc.xpath("//h1")
      h2 = html_doc.xpath("//h2")
      h3 = html_doc.xpath("//h3")
      anchor = html_doc.xpath("//a")
      [h1, h2, h3, anchor].join(' ')

    end

  end
end