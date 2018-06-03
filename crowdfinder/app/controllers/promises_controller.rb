class PromisesController < ApplicationController
  before_action :set_promise, only: [:show, :edit, :update, :destroy]

  # GET /promises
  # GET /promises.json
  def index
    @promises = Promise.all
  end

  # GET /promises/1
  # GET /promises/1.json
  def show
  end

  # GET /promises/new
  def new
    if Project.find(@promise.project_id).creator == current_user.id
      @promise = Promise.new
    else
      redirect_to(home_index_path)
    end
  end

  # GET /promises/1/edit
  def edit
    unless current_user.is_admin or Project.find(@promise.project_id).creator == current_user.id
      redirect_to(home_index_path)
    end
  end

  # POST /promises
  # POST /promises.json
  def create
    if current_user.is_admin or Project.find(@promise.project_id).creator == current_user.id
      @promise = Promise.new(promise_params)

      respond_to do |format|
        if @promise.save
          format.html { redirect_to @promise, notice: 'Promise was successfully created.' }
          format.json { render :show, status: :created, location: @promise }
        else
          format.html { render :new }
          format.json { render json: @promise.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to(home_index_path)
    end
  end

  # PATCH/PUT /promises/1
  # PATCH/PUT /promises/1.json
  def update
    if current_user.is_admin or Project.find(@promise.project_id).creator == current_user.id
      respond_to do |format|
        if @promise.update(promise_params)
          format.html { redirect_to @promise, notice: 'Promise was successfully updated.' }
          format.json { render :show, status: :ok, location: @promise }
        else
          format.html { render :edit }
          format.json { render json: @promise.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to(home_index_path)
    end
  end

  # DELETE /promises/1
  # DELETE /promises/1.json
  def destroy
    if current_user.is_admin or Project.find(@promise.project_id).creator == current_user.id
      @promise.destroy
      respond_to do |format|
        format.html { redirect_to promises_url, notice: 'Promise was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to(home_index_path)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promise
      @promise = Promise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promise_params
      params.require(:promise).permit(:project_id, :merch, :price, :is_default, :level)
    end
end
