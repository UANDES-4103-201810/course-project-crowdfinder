class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.search(params[:name], params[:category_id])
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @promises = @project.promises
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    unless current_user.is_admin or @project.creator == current_user.id
      redirect_to(home_index_path)
    end
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        @promise = Promise.new(is_default: true)
        format.html { redirect_to @project}
        format.json { render :show, status: :created, location: @project }
        flash[:success] = 'Project was successfully created.'
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
        flash[:danger] = 'Project was not created.'
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project }
        format.json { render :show, status: :ok, location: @project }
        flash[:success] = 'Project was successfully updated.'
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
        flash[:success] = 'Project was not updated.'
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
      flash[:warning] = 'Project was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :creator, :category_id, :description, :finale_date, :rating, :goal, :photo)
    end
end
