class AddResourceAttributes < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :funding_type, :string # funding type could be "internship" or "research grant"
    add_column :resources, :first_come_first_serve, :bool
    add_column :resources, :rubric_available, :bool
    add_column :resources, :fin_aid_dependent, :bool
    # what to do | table to do it to | name of column | data type of column
  end
end
