class AddEmailToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :email, :string
  end
end
