class AddTableReviewsToMySchema < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.float :rating

      t.timestamps
    end
  end
end
