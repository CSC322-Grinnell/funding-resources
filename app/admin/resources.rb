ActiveAdmin.register Resource do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :amount, :source, :cp
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :amount, :source, :cp]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  #Definining the various categories for each resource
  permit_params :title, :description, :amount, :source, :cp, tag_ids: []
  
  form do |f|
    f.inputs do
      f.input :tag_ids, as: :tags, collection: Gutentag::Tag.all, display_name: :name
      f.input :title
      f.input :description
      f.input :amount
      f.input :source
      f.input :cp
    end
    f.actions
  end

end