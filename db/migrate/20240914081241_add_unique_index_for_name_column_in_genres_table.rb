class AddUniqueIndexForNameColumnInGenresTable < ActiveRecord::Migration[7.2]
  def change
    add_index :genres, :name, unique: true
  end
end
