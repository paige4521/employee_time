class ProjectsController < ActionController::Base
before_action :authorized_user, only: [:edit, :update]

  def index
    @page = params[:page].to_i
    per_page = 5
    @projects = Project.page(@page).per(per_page)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
      if @project.save
  end

  def edit

  end


  def update

  end

  def destroy

  end

  private def project_params
    project_params.require("project").permit(:)

end
