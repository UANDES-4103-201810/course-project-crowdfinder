class FundersController < ApplicationController
  def index
    @funders = Funder.all
  end

  def create
  end

  def new
    unless current_user.is_admin
      redirect_to(home_index_path)
    end
  end

  def edit
    unless current_user.is_admin
      redirect_to(home_index_path)
    end
  end

  def show
  end

  def update
  end

  def destroy
  end
end
