class SearchController < ApplicationController
  def index
   if params[:query].present?
        if params[:notFinAid].present?
            @resources = Resource.tagged_with(:names => ['notFinAid'], :match => :any).search(params[:query])
        else
            @resources = Resource.search(params[:query])
        end
   else
        if params[:notFinAid].present?
            @resources = Resource.tagged_with(:names => ['notFinAid'], :match => :any)
        else
            @resources = Resource.all
        end
   end
  end
end