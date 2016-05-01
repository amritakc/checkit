class CreateWomenshelters < ActiveRecord::Migration
  def change
    create_table :womenshelters do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :latitude
      t.string :longitude
      t.string :phone

      t.timestamps null: false
    end
  end
end
