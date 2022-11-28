class CreateBuddies < ActiveRecord::Migration[7.0]
  def change
    create_table :buddies do |t|
      t.string :name
      t.integer :charisma
      t.integer :money
      t.integer :front_end
      t.integer :back_end
      t.integer :stamina
      t.integer :luck

      t.timestamps
    end
  end
end
