class ResourcesController < ApplicationController
  before_action :find_resource, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_param)

    if @resource.save
      redirect_to funds_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @resource.update(resource_param)
      redirect_to resource_path(@resource)
    else
      render 'edit'
    end
  end

  def destroy
    @resource.destroy
    redirect_to root_path
  end

  private
    def resource_param
      params.require(:resource).permit(:title, :description, :source, :cp, :amount)
    end

    def find_resource
      @resource = Resource.find(params[:id])
    end
end
