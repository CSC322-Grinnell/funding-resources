class PagesController < ApplicationController
  def home
  end

  def faqs
  end

  def news
  end

  def contact
  end

  def funds
    @resources = Resource.all.order("created_at DESC")
  end

  def browse
    @resources = Resource.all
  end 
  
  def add_funds
  end
end
