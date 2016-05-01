class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :gender
      t.string :age
      t.string :contact_point
      t.boolean :previous_meeting
      t.string :responder_name

      t.timestamps null: false
    end
  end
end
