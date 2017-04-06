class CrawlSerializer < ActiveModel::Serializer
  attributes :id, :url, :content, :status, :crawl_started_at, :crawl_completed_at
end
