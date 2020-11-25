class RemoveFiltersFromResources < ActiveRecord::Migration[6.0]
  def change
    remove_column :resources, :international_elgibility, :boolean
    remove_column :resources, :funding_type, :string
    remove_column :resources, :first_come_first_serve, :boolean
    remove_column :resources, :rubric_available, :boolean
    remove_column :resources, :fin_aid_dependent, :boolean
  end
end
