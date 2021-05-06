class AddApprovedToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :approved, :boolean, :default => FALSE
  end
end
