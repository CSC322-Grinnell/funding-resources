class ChangeCpColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :resources, :cp, :contact_person
  end
end
