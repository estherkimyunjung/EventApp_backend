class OrganizationsController < ApplicationController
  skip_before_action :logged_in?, only: [:create]
  
  def index
    @organizations = Organization.all
    render json: @organizations
  end

  def show
    @organization = Organization.find(params[:id])
    render json: @organization
  end

    def index
        @organizations = Organization.all
        render json: @organizations
    end

    def show
      @organization = Organization.find(params[:id])
      render json: @organization
    end
end
