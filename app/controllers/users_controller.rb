class UsersController < ApplicationController
  #shows their profile page
  def show
    @user = User.find(params[:id])  
  end

  #edits a user's info
  def edit 
    @user = User.find(params[:id])
    end
  
  def update
    @user = User.find(params[:id])
      if @user.update_attributes(params[:id])
        redirect_to @user
      else 
        render :edit
      end
  end
  
  #delete a user
  def delete
    @user = User.find(params[:id])
      if @user.destroy 
          redirect_to welcome#{index}
      else flash[:error] = "Something went wrong with this. Please try your action again! :D"
          redirect_to @user
       end
  end  
end
  
