require "requests"

class ContentController < ApplicationController
  def list
    response = Requests.request("GET", "http://www.google.com/")
    @articles = Article.last(10)
  end
end
