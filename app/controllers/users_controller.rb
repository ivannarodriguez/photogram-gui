class UsersController < ApplicationController
  
  def homepage
    render({:template => "user_templates/home"})
  end

end
