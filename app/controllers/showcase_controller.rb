class ShowcaseController < ApplicationController
  def index
    @slideshow_images_names = ['dog1', 'dog2', 'dog3']
    @slideshow_selected_image_index = 1
  end
end
