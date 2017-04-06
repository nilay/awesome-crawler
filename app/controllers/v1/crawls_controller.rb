class V1::CrawlsController < V1::ApplicationController

  # GET /v1/crawls
  def index
    crawls = Website.all
    render_success message: nil, data: { websites: ActiveModel::Serializer::CollectionSerializer.new(crawls, serializer: CrawlSerializer) }
  end


  # POST /v1/crawls
  def create
    crawl = Website.new(crawl_params)

    if crawl.save
      CrawlWorker.perform_async(crawl.id)
      render_success message: 'Url is stored, will be crawled shortly', data: nil, status: :created

    else
      render_fail message: crawl.errors.full_messages.join(', ')
    end
  end


  private
    # Only allow a trusted parameter "white list" through.
    def crawl_params
      params.require(:crawl).permit :url
    end
end
