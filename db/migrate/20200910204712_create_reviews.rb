class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.text :comment
      t.integer :rating, null: false, default: 1
      t.datetime :posted_at

      t.timestamps
    end
  end
end
