class DormsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :about, :FAQ]
  def show
     @dorm = Dorm.find(params[:id])  
  end
end
