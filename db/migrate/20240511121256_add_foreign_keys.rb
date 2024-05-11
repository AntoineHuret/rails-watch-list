class AddForeignKeys < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :bookmarks, :movies
    add_foreign_key :bookmarks, :lists
  end
end
