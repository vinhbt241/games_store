class CreateGames < ActiveRecord::Migration[7.2]
  def change
    create_table :games, id: :uuid do |t|
      t.string :name, null: false
      t.date :release_date, null: false
      t.references :genre, type: :uuid
      t.timestamps
    end
  end
end
