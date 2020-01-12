class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :ratings
      t.string :title
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
