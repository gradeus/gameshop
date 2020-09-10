class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.integer :category, default: 0, null: false

      t.timestamps
    end
  end
end
