class ProjectsController < ActionController::Base
before_action :authorized_user, only: [:edit, :update]

  def index
    @project = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    @projects = Project.find(params["id"])
      if @project.update(project_params)
        redirect_to
      else
        render  :edit
      end
  end

  def destroy

  end

  private
    def project_params
      params.require("project").permit(:name, :description, :notes, :assigned_to)
    end
end
