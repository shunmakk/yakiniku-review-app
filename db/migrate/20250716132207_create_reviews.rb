class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.string :customer_name
      t.integer :overall_rating
      t.text :content
      t.datetime :visited_at

      t.timestamps
    end
  end
end
