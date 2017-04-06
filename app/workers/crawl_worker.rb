class CrawlWorker
  include Sidekiq::Worker
  def perform(website_id)
    website = Website.find(website_id)
    website.crawl_started_at =  DateTime.now
    website.content =  AwesomeCrawler.crawl(website.url)
    website.crawl_completed_at =  DateTime.now
    website.status = 'done'
    website.save
  end
end