class SearchController < ApplicationController
  def index
    @users = User.search(params[:name])
    @dorms = Dorm.search(params[:name])
  end
end
