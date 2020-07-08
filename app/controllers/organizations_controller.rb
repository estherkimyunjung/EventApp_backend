class OrganizationsController < ApplicationController
  skip_before_action :logged_in?, only: [:index]
  
  def index
    @organizations = Organization.all
    render json: @organizations, include: :events
  end

  def show
    @organization = Organization.find(params[:id])
    render json: @organization
  end
end
