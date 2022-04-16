class CreatePetriDishRequestSpecimen < ActiveRecord::Migration[7.0]
  def change
    create_table :petri_dish_request_specimen do |t|
      t.string :controller
      t.string :action
      t.string :params
      t.string :headers
      t.string :format
      t.string :method
      t.string :path
      t.string :request
      t.string :response
      t.string :status
      t.string :view_runtime
      t.string :db_runtime

      t.timestamps
    end
  end
end
