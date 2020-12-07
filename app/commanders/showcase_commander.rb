class ShowcaseCommander < Fie::Commander
  def next_image
    max_index = state.slideshow_images_names.size
    image_index = state.slideshow_selected_image_index
    state.slideshow_selected_image_index = (image_index + 1) % max_index
  end

  def previous_image
    max_index = state.slideshow_images_names.size
    image_index = state.slideshow_selected_image_index
    state.slideshow_selected_image_index = (image_index - 1) % max_index
  end
end