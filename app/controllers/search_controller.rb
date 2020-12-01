class SearchController < ApplicationController
  def index
    @tags = Gutentag::Tag.all
    @tag_names_selected = []
    
    # Get an array of all the tags checked
    params.each do |k, v|
        if k != "query" and k != "commit" and k != "controller" and k != "action"
            @tag_names_selected.push(k)
        end
    end
    
    if params[:query].present? # If there is a query
      if @tag_names_selected.length() > 0 # If there are tags
        @resources = Resource.tagged_with(:names => @tag_names_selected, :match => :any).search(params[:query])
      else # No tags
        @resources = Resource.search(params[:query])
      end
      
    else # If the search bar is blank
      if @tag_names_selected.length() > 0 # If there are tags
        @resources = Resource.tagged_with(:names => @tag_names_selected, :match => :any)
      else # No tags
        @resources = Resource.all
      end
    end
  end
end