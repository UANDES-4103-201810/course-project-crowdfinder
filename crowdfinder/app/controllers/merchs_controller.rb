class MerchsController < ApplicationController
  def index
    @merchs = Merch.all
  end

  def create
  end

  def new
    if current_user.is_admin or Project.find(@merch.project_id).creator == current_user.id
      @merch = Merch.new
    else
      redirect_to(home_index_path)
    end
  end

  def edit
    unless current_user.is_admin or Project.find(@merch.project_id).creator == current_user.id
      redirect_to(home_index_path)
    end
  end

  def show
  end

  def update
  end

  def destroy
    unless current_user.is_admin or Project.find(@merch.project_id).creator == current_user.id
      redirect_to(home_index_path)
    end
  end
end
