class CreateGenres < ActiveRecord::Migration[7.2]
  def change
    create_table :genres, id: :uuid do |t|
      t.string :name, null: false
      t.text :description
      t.timestamps
    end
  end
end
