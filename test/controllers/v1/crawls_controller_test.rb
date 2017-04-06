require 'test_helper'

class V1::CrawlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v1_crawl = v1_crawls(:one)
  end

  test "should get index" do
    get v1_crawls_url, as: :json
    assert_response :success
  end

  test "should create v1_crawl" do
    assert_difference('V1::Website.count') do
      post v1_crawls_url, params: { v1_crawl: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show v1_crawl" do
    get v1_crawl_url(@v1_crawl), as: :json
    assert_response :success
  end

  test "should update v1_crawl" do
    patch v1_crawl_url(@v1_crawl), params: { v1_crawl: {  } }, as: :json
    assert_response 200
  end

  test "should destroy v1_crawl" do
    assert_difference('V1::Website.count', -1) do
      delete v1_crawl_url(@v1_crawl), as: :json
    end

    assert_response 204
  end
end
