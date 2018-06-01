class SearchesController < ApplicationController
  def create
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
    @search = params[:search][:username]
    begin
      @tweets = @client.user_timeline("#{@search}",{count: 2})
    rescue
      render json: "Username does not exist or is private", status: 404
    end
    render 'static_pages/index'
  end

  private
  def search_params
    params.require(:search).permit(:username)
  end
end
