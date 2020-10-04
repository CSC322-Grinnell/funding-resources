class ResourcesController < ApplicationController
  before_action :find_resource, only: [:show]

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
  end

  private
    def resource_params
      params.require(:resource).permit(:title, :description, :amount, :source, :cp)
    end

    def find_resource
      @resource = Resource.find(params[:id])
    end
end
