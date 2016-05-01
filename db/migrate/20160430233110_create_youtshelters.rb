class CreateYoutshelters < ActiveRecord::Migration
  def change
    create_table :youtshelters do |t|
      t.string :name
      t.string :address
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
