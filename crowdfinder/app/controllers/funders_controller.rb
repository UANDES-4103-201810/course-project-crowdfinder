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
        format.html { redirect_to @funder, notice: 'Project was successfully funded.' }
        format.json { render :show, status: :created, location: @funder }
      else
        format.html { render :new }
        format.json { render json: @funder.errors, status: :unprocessable_entity }
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

  def fund
    @funders = Funder.all
    @funder = Funder.new(:promise_id => params[:params1], :user_id => params[:params2])

    if @funder.save
      UserMailer.with(funder: @funder).fund_email.deliver_later
      @user
      flash.now[:success] = 'Project was successfully Funded!'
    else
      flash.now[:danger] = 'Funding Failed.'
    end
  end

  def funder_params
    params.require(:funder).permit(:promise_id, :user_id)
  end

end
