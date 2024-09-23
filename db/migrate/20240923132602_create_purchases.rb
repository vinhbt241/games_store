class CreatePurchases < ActiveRecord::Migration[7.2]
  def change
    create_table :purchases do |t|
      t.references :user, type: :uuid
      t.references :game, type: :uuid
      t.timestamps
    end
  end
end
