class UsersController < ApplicationController
  
  def index
    @list_of_users = User.all.order({ :created_at => :desc })
    render({:template => "user_templates/index"})
  end

  def show_details
    input_username = params["username"]

    @user = User.where({:username => input_username})[0]

    if @user == nil
      redirect_to("/404")
    else
      render({:template => "user_templates/show_details"})
    end
  end

end
