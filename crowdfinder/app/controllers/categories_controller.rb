class CategoriesController < ApplicationController
  def index
    unless current_user.is_admin
      redirect_to(home_index_path)
    end
    @categories = Category.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
