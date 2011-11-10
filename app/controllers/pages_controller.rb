class PagesController < ApplicationController
  before_filter :set_globals

  def set_globals
    @search ||= Twitter::Search.new
    @tweets ||= ping_twitter_for_tweets_with("dev")
  end

  def index
    @tweets
  end
  
  def ping_twitter_for_tweets_with(query)
    @tweets = @search.hashtag(query).language("en").no_retweets.per_page(20).fetch
  end
end
