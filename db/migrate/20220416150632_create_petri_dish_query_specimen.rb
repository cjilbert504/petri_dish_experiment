class CreatePetriDishQuerySpecimen < ActiveRecord::Migration[7.0]
  def change
    create_table :petri_dish_query_specimen do |t|
      t.string :sql
      t.string :name
      t.string :connection
      t.string :binds
      t.string :type_casted_binds
      t.string :statment_name
      t.string :cached

      t.timestamps
    end
  end
end
