class CreateYoutshelters < ActiveRecord::Migration
  def change
    create_table :youtshelters do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :latitude
      t.string :longitude
      t.integer :phone

      t.timestamps null: false
    end
  end
end
