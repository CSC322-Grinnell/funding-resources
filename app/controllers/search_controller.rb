class SearchController < ApplicationController
  def index
   if params[:query].present?
        if params[:notFinAid].present?
            @resources = Resource.search(params[:query]).tagged_with(:ids => [:notFinAid], :match => :any)
        else
            @resources = Resource.search(params[:query])
        end
     # Article.tagged_with(:ids => [tag_a.id, tag_b.id], :match => :all)
   else
        if params[:notFinAid].present?
            @resources = Resource.search(params[:query]).tagged_with(:ids => [:notFinAid], :match => :any)
        else
            @resources = Resource.all
        end
   end
  end
end
