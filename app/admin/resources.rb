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
  permit_params :title, :description, :amount, :source, :cp

end
