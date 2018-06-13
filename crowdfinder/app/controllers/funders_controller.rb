class FundersController < ApplicationController
  def index
    @funders = Funder.all
  end

  def create
    @funder = Funder.new(funder_params)

    respond_to do |format|
      if @funder.save
        UserMailer.with(funder: @funder).fund_email.deliver_later
        @user
        format.html { redirect_to '/' }
        format.json { render :show, status: :created, location: @funder }
        flash[:success] = 'Promise was successfully funded.'
      else
        format.html { render :new }
        format.json { render json: @funder.errors, status: :unprocessable_entity }
        flash[:danger] = 'Promise was not funded.'
      end
    end
  end

  def new
    @funder = Funder.new
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

  def funder_params
    params.permit(:user_id, :promise_id)
  end

end
