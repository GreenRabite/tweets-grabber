class StaticPagesController < ApplicationController
  def index
    #Hook for our webpage to inject in
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
    p ENV
    @client.user_timeline("GreenRabite").each do |tweet|
      puts tweet.text
    end
    render :index
  end
end
