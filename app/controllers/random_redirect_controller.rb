class RandomRedirectController < ApplicationController
  def index
    p = Publication.offset(rand(Publication.count)).first
    redirect_to p.url
  end
end
