class MerchsController < ApplicationController
  def index
    @merchs = Merch.all
  end

  def create
  end

  def new
    @merch = Merch.new
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
