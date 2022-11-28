class CreateScenes < ActiveRecord::Migration[7.0]
  def change
    create_table :scenes do |t|
      t.string :title
      t.string :npc_name
      t.text :story
      t.references :buddy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
