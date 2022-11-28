class CreatePcs < ActiveRecord::Migration[7.0]
  def change
    create_table :pcs do |t|
      t.string :pc_name
      t.string :gender
      t.string :age
      t.string :integer
      t.integer :charisma
      t.integer :money
      t.integer :front_end
      t.integer :back_end
      t.integer :stamina
      t.integer :luck
      t.references :user, null: false, foreign_key: true
      t.references :scene, null: false, foreign_key: true
      t.boolean :lazy
      t.boolean :studious
      t.boolean :genius
      t.boolean :neutral
      t.boolean :shy
      t.boolean :outgoing

      t.timestamps
    end
  end
end
