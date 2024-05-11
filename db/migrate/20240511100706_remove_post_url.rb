class RemovePostUrl < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :post_url, :string
    add_column :movies, :poster_url, :string
  end
end
