class ApplicationController < ActionController::Base
  protect_from_forgery
  def init
    @search = Twitter::Search.new
  end
end
