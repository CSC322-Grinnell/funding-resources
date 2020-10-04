class SearchController < ApplicationController
  def index
   if params[:query].present?
     @resources = Resource.search(params[:query])
   else
     @resources = Resource.all
   end
  end
end
