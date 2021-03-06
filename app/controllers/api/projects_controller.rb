class Api::ProjectsController < ApplicationController

    def index
      @projects = Project.all
      render "api/projects/index"
    end

    def create
      @project = Project.new(project_params)
      @project.project_owner_id = current_user.id

      if @project.save
        ProjectMembership.create(
          member_id: current_user.id, project_id: @project.id
        )
        render "api/projects/show"
      else
        render json: @project.errors.full_messages, status: 422
      end
    end

    def show
      @project = Project.find(params[:id])
      render "api/projects/show"
    end

    def update
      @project = Project.find(params[:id])
      if @project.update(project_params)
        render "api/projects/show"
      else
        render json: @project.errors.full_messages, status: 422
      end
    end

    def destroy
      @project = Project.find(params[:id])
      if @project.destroy
        render "api/projects/show"
      else
        render plain: "You can't destroy what's not there."
      end
    end

    private

    def project_params
      params.require(:project).permit(:project_owner_id, :name, :description)
    end

end
