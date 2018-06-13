class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /categories
  # GET /categories.json
  def index
    unless current_user.is_admin
    redirect_to(home_index_path)
  end
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    unless current_user.is_admin
      redirect_to(home_index_path)
    end
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category }
        format.json { render :show, status: :created, location: @category }
        flash[:success] = 'Category was successfully created.'
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
        flash[:danger] = 'Category was not created.'
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category }
        format.json { render :show, status: :ok, location: @category }
        flash[:success] = 'Category was successfully updated.'
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
        flash[:danger] = 'Category was not updated.'
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
      flash[:warning] = 'Category was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
