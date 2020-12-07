class AddWebToResource < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :web, :string
  end
end
