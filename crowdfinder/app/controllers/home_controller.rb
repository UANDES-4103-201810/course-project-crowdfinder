class HomeController < ApplicationController

  def index
    if user_signed_in?
      @user = current_user
    else
      @user = nil
    end
  end
end
