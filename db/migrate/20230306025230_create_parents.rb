class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.references :student, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.string :gender
      t.timestamps
    end
  end
end
