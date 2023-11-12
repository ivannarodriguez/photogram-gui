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

  def insert_user
    username = params["input_username"]
    new_user = User.new
    new_user.username = username
    new_user.save
    redirect_to("/users/" + new_user.username)
  end

  def update_user
    username = params["username"]
    new_username = params["input_username"]
    user = User.where({:username => username})[0]
    user.username = new_username
    user.save
    redirect_to("/users/" + user.username)
  end

end
