class PagesController < ApplicationController
  before_filter :set_globals

  def set_globals
    @search = Twitter::Search.new
  end

  def index
    @tweets = @search.hashtag("dev").language("en").no_retweets.fetch
  end
end
