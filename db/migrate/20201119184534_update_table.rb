class UpdateTable < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :international_elgibility, :bool
  end
end
