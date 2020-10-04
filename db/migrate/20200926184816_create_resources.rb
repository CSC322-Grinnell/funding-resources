class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.text :description
      t.string :amount
      t.string :source
      t.string :cp

      t.timestamps
    end
  end
end
