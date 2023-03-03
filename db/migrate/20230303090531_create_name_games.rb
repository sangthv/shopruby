class CreateNameGames < ActiveRecord::Migration[6.1]
  def change
    create_table :name_games do |t|
      t.references :game, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
