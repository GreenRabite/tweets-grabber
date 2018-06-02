class SearchesController < ApplicationController
  def create
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
    @search = (params[:search][:username])
    begin
      @tweets = @client.user_timeline("#{@search}",{count: 25})
    rescue
      redirect_to static_pages_404_url
      return
    end
    render 'static_pages/index'
  end

  private
  def search_params
    params.require(:search).permit(:username)
  end
end
