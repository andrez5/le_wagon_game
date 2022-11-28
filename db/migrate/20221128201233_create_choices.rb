class CreateChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :choices do |t|
      t.string :action
      t.integer :next_scene_id
      t.integer :charisma
      t.integer :money
      t.integer :front_end
      t.integer :back_end
      t.integer :stamina
      t.integer :luck
      t.references :scene, null: false, foreign_key: true

      t.timestamps
    end
  end
end
