class DormsController < ApplicationController
  def show
     @dorm = Dorm.find(params[:id])  
  end
end
