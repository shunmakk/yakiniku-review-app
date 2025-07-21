class CreateReviewMenuRatings < ActiveRecord::Migration[8.0]
  def change
    create_table :review_menu_ratings do |t|
      t.references :review, null: false, foreign_key: true
      t.references :menu_item, null: false, foreign_key: true
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
